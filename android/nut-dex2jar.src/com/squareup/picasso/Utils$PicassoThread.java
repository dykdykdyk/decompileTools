package com.squareup.picasso;

import android.os.Process;

class Utils$PicassoThread extends Thread
{
  public Utils$PicassoThread(Runnable paramRunnable)
  {
    super(paramRunnable);
  }

  public void run()
  {
    Process.setThreadPriority(10);
    super.run();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Utils.PicassoThread
 * JD-Core Version:    0.6.2
 */