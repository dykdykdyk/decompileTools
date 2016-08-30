package retrofit;

import java.util.concurrent.ThreadFactory;

class Platform$Android$2
  implements ThreadFactory
{
  Platform$Android$2(Platform.Android paramAndroid)
  {
  }

  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(new Platform.Android.2.1(this, paramRunnable), "Retrofit-Idle");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.Platform.Android.2
 * JD-Core Version:    0.6.2
 */