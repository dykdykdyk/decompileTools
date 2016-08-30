package io.fabric.sdk.android.services.b;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

final class u
  implements ThreadFactory
{
  u(String paramString, AtomicLong paramAtomicLong)
  {
  }

  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = Executors.defaultThreadFactory().newThread(new v(this, paramRunnable));
    paramRunnable.setName(this.a + this.b.getAndIncrement());
    return paramRunnable;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.u
 * JD-Core Version:    0.6.2
 */