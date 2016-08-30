package u.aly;

public final class cz
{
  private final dq a;
  private final ec b = new ec();

  public cz()
  {
    this(new dm());
  }

  public cz(dr paramdr)
  {
    this.a = paramdr.a(this.b);
  }

  public final void a(cw paramcw, byte[] paramArrayOfByte)
    throws bv
  {
    try
    {
      ec localec = this.b;
      int i = paramArrayOfByte.length;
      localec.a = paramArrayOfByte;
      localec.b = 0;
      localec.c = (i + 0);
      paramcw.a(this.a);
      return;
    }
    finally
    {
      this.b.a = null;
      this.a.r();
    }
    throw paramcw;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.cz
 * JD-Core Version:    0.6.2
 */