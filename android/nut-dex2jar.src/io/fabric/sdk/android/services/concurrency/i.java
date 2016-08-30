package io.fabric.sdk.android.services.concurrency;

final class i
  implements Runnable
{
  i(h paramh, Runnable paramRunnable)
  {
  }

  public final void run()
  {
    try
    {
      this.a.run();
      return;
    }
    finally
    {
      this.b.a();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.i
 * JD-Core Version:    0.6.2
 */