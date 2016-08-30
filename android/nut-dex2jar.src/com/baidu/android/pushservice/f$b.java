package com.baidu.android.pushservice;

import android.content.Context;
import android.os.Handler;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.message.d;
import com.baidu.android.pushservice.message.e;
import com.baidu.android.pushservice.util.m;
import java.util.LinkedList;

class f$b extends Thread
{
  f$b(f paramf)
  {
    setName("PushService-PushConnection-SendThread");
  }

  public void run()
  {
    if (!f.l(this.a));
    while (true)
    {
      synchronized (this.a.c.a())
      {
        while (true)
        {
          int i = this.a.c.a().size();
          if (i == 0);
          try
          {
            this.a.c.a().wait();
            if (this.a.c.a().size() <= 0)
              break label359;
            e locale = (e)this.a.c.a().removeFirst();
            if (f.l(this.a))
              break label358;
            if ((locale == null) || (locale.a() == null))
              break;
            a.c("PushConnection", "SendThread send msg :" + locale.toString());
            if (locale.b())
            {
              if (locale.c())
              {
                f.d(this.a, true);
                this.a.b.removeCallbacks(f.m(this.a));
                this.a.b.postDelayed(f.m(this.a), 60000L);
              }
            }
            else
            {
              if (PushSocket.sendMsg(f.a, locale.a(), locale.a().length) != -1)
                break;
              a.c("PushConnection", "sendMsg err, errno:" + PushSocket.getLastSocketError());
              f.e(this.a);
              m.a("PushConnection sendMsg err " + f.c(this.a).getPackageName() + " lastSocketError " + PushSocket.getLastSocketError() + " socketfd " + f.a + System.currentTimeMillis(), f.c(this.a).getApplicationContext());
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            while (true)
              a.e("PushConnection", "SendThread wait exception: " + localInterruptedException.getMessage());
          }
        }
      }
      f.d(this.a, false);
      continue;
      label358: return;
      label359: Object localObject2 = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.f.b
 * JD-Core Version:    0.6.2
 */