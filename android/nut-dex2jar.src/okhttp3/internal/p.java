package okhttp3.internal;

import java.util.concurrent.ThreadFactory;

final class p
  implements ThreadFactory
{
  p(String paramString, boolean paramBoolean)
  {
  }

  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, this.a);
    paramRunnable.setDaemon(this.b);
    return paramRunnable;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.p
 * JD-Core Version:    0.6.2
 */