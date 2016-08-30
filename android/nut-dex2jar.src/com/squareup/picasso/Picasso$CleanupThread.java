package com.squareup.picasso;

import android.os.Handler;
import android.os.Message;
import android.os.Process;
import java.lang.ref.ReferenceQueue;

class Picasso$CleanupThread extends Thread
{
  private final Handler handler;
  private final ReferenceQueue<Object> referenceQueue;

  Picasso$CleanupThread(ReferenceQueue<Object> paramReferenceQueue, Handler paramHandler)
  {
    this.referenceQueue = paramReferenceQueue;
    this.handler = paramHandler;
    setDaemon(true);
    setName("Picasso-refQueue");
  }

  public void run()
  {
    Process.setThreadPriority(10);
    try
    {
      while (true)
      {
        Action.RequestWeakReference localRequestWeakReference = (Action.RequestWeakReference)this.referenceQueue.remove(1000L);
        Message localMessage = this.handler.obtainMessage();
        if (localRequestWeakReference != null)
        {
          localMessage.what = 3;
          localMessage.obj = localRequestWeakReference.action;
          this.handler.sendMessage(localMessage);
        }
        else
        {
          localMessage.recycle();
        }
      }
    }
    catch (Exception localException)
    {
      this.handler.post(new Picasso.CleanupThread.1(this, localException));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
  }

  void shutdown()
  {
    interrupt();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Picasso.CleanupThread
 * JD-Core Version:    0.6.2
 */