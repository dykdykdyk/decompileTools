package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.ThreadFactory;

public final class x
  implements ThreadFactory
{
  private final int a = 10;

  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable);
    paramRunnable.setPriority(this.a);
    paramRunnable.setName("Queue");
    return paramRunnable;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.x
 * JD-Core Version:    0.6.2
 */