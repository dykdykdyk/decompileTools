package u.aly;

import java.io.ByteArrayOutputStream;

public final class da
{
  private final ByteArrayOutputStream a = new ByteArrayOutputStream();
  private final eb b = new eb(this.a);
  private dq c;

  public da()
  {
    this(new dm());
  }

  private da(dr paramdr)
  {
    this.c = paramdr.a(this.b);
  }

  public final byte[] a(cw paramcw)
    throws bv
  {
    this.a.reset();
    paramcw.b(this.c);
    return this.a.toByteArray();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.da
 * JD-Core Version:    0.6.2
 */