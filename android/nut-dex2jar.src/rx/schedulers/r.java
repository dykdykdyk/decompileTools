package rx.schedulers;

public final class r extends rx.r
{
  private static final r b = new r();

  static int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
      return -1;
    if (paramInt1 == paramInt2)
      return 0;
    return 1;
  }

  static r a()
  {
    return b;
  }

  public final rx.s createWorker()
  {
    return new s();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.r
 * JD-Core Version:    0.6.2
 */