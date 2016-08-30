package com.amap.api.mapcore2d;

public class ab
{
  private long a = -9223372036854775808L;
  private long b = -9223372036854775808L;
  private double c = 4.9E-324D;
  private double d = 4.9E-324D;

  public ab()
  {
    this.a = 0L;
    this.b = 0L;
  }

  private ab(double paramDouble1, double paramDouble2, long paramLong1, long paramLong2)
  {
    this.c = paramDouble1;
    this.d = paramDouble2;
    this.a = paramLong1;
    this.b = paramLong2;
  }

  ab(double paramDouble1, double paramDouble2, boolean paramBoolean)
  {
    if (paramBoolean == true)
    {
      this.a = (()(paramDouble1 * 1000000.0D));
      this.b = (()(paramDouble2 * 1000000.0D));
      return;
    }
    this.c = paramDouble1;
    this.d = paramDouble2;
  }

  public ab(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public int a()
  {
    return (int)this.b;
  }

  public void a(double paramDouble)
  {
    this.d = paramDouble;
  }

  public int b()
  {
    return (int)this.a;
  }

  public void b(double paramDouble)
  {
    this.c = paramDouble;
  }

  public long c()
  {
    return this.b;
  }

  public long d()
  {
    return this.a;
  }

  public double e()
  {
    if (Double.doubleToLongBits(this.d) == Double.doubleToLongBits(4.9E-324D))
      this.d = (w.a(this.b) * 20037508.34D / 180.0D);
    return this.d;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      paramObject = (ab)paramObject;
      if (this.a != paramObject.a)
        return false;
      if (this.b != paramObject.b)
        return false;
      if (Double.doubleToLongBits(this.c) != Double.doubleToLongBits(paramObject.c))
        return false;
    }
    while (Double.doubleToLongBits(this.d) == Double.doubleToLongBits(paramObject.d));
    return false;
  }

  public double f()
  {
    if (Double.doubleToLongBits(this.c) == Double.doubleToLongBits(4.9E-324D))
      this.c = (Math.log(Math.tan((w.a(this.a) + 90.0D) * 3.141592653589793D / 360.0D)) / 0.0174532925199433D * 20037508.34D / 180.0D);
    return this.c;
  }

  public ab g()
  {
    return new ab(this.c, this.d, this.a, this.b);
  }

  public int hashCode()
  {
    int i = (int)(this.a ^ this.a >>> 32);
    int j = (int)(this.b ^ this.b >>> 32);
    long l = Double.doubleToLongBits(this.c);
    int k = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(this.d);
    return (((i + 31) * 31 + j) * 31 + k) * 31 + (int)(l ^ l >>> 32);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ab
 * JD-Core Version:    0.6.2
 */