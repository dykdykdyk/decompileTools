package com.loc;

public final class as
{
  public double a = 0.0D;
  public double b = 0.0D;
  public int c = 0;
  public String d = "0";
  public int e = -1;

  public as(ap paramap, double paramDouble1, double paramDouble2)
  {
    this.a = paramDouble1;
    this.b = paramDouble2;
  }

  public as(ap paramap, double paramDouble1, double paramDouble2, int paramInt1, int paramInt2)
  {
    this.a = paramDouble1;
    this.b = paramDouble2;
    this.c = paramInt1;
    this.e = paramInt2;
  }

  public as(ap paramap, double paramDouble1, double paramDouble2, int paramInt1, String paramString, int paramInt2)
  {
    this.a = paramDouble1;
    this.b = paramDouble2;
    this.d = paramString;
    this.c = paramInt1;
    this.e = paramInt2;
  }

  final double a(as paramas)
  {
    double d2 = 6356725.0D + 21412.0D * (90.0D - this.a) / 90.0D;
    double d1 = Math.cos(this.a * 3.1415926535898D / 180.0D) * d2 * ((paramas.b - this.b) * 3.1415926535898D / 180.0D);
    d2 *= (paramas.a - this.a) * 3.1415926535898D / 180.0D;
    return Math.sqrt(d2 * d2 + d1 * d1);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.as
 * JD-Core Version:    0.6.2
 */