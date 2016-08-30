package retrofit;

import android.os.Process;

class Platform$Android$2$1
  implements Runnable
{
  Platform$Android$2$1(Platform.Android.2 param2, Runnable paramRunnable)
  {
  }

  public void run()
  {
    Process.setThreadPriority(10);
    this.val$r.run();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Platform.Android.2.1
 * JD-Core Version:    0.6.2
 */