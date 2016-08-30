package u.aly;

import java.io.Serializable;

public class df
  implements Serializable
{
  public final byte a;
  private final boolean b;
  private final String c;
  private final boolean d;

  public df(byte paramByte)
  {
    this(paramByte, false);
  }

  public df(byte paramByte, boolean paramBoolean)
  {
    this.a = paramByte;
    this.b = false;
    this.c = null;
    this.d = paramBoolean;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.df
 * JD-Core Version:    0.6.2
 */