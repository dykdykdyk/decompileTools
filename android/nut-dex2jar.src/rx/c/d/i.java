package rx.c.d;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public final class i extends AtomicLong
  implements ThreadFactory
{
  final String a;

  public i(String paramString)
  {
    this.a = paramString;
  }

  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, this.a + incrementAndGet());
    paramRunnable.setDaemon(true);
    return paramRunnable;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.i
 * JD-Core Version:    0.6.2
 */