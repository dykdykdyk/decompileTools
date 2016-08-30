package okhttp3;

final class p
  implements Runnable
{
  p(o paramo)
  {
  }

  public final void run()
  {
    long l1;
    do
    {
      l1 = this.a.a(System.nanoTime());
      if (l1 == -1L)
        return;
    }
    while (l1 <= 0L);
    long l2 = l1 / 1000000L;
    try
    {
      label57: synchronized (this.a)
      {
        this.a.wait(l2, (int)(l1 - l2 * 1000000L));
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      break label57;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.p
 * JD-Core Version:    0.6.2
 */