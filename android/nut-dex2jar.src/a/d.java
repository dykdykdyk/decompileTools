package a;

final class d extends Thread
{
  public d()
  {
    super("Okio Watchdog");
    setDaemon(true);
  }

  public final void run()
  {
    while (true)
      try
      {
        a locala = a.e();
        if (locala != null)
          locala.a();
      }
      catch (InterruptedException localInterruptedException)
      {
      }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.d
 * JD-Core Version:    0.6.2
 */