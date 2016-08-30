package com.tencent.connect.b;

public final class v
{
  public String a;
  public String b;
  public String c;
  private int d = 1;
  private long e = -1L;

  public v(String paramString)
  {
    this.a = paramString;
  }

  public final void a(String paramString1, String paramString2)
    throws NumberFormatException
  {
    this.b = paramString1;
    this.e = 0L;
    if (paramString2 != null)
      this.e = (System.currentTimeMillis() + Long.parseLong(paramString2) * 1000L);
  }

  public final boolean a()
  {
    return (this.b != null) && (System.currentTimeMillis() < this.e);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.v
 * JD-Core Version:    0.6.2
 */