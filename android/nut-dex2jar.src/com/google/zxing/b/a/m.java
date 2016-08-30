package com.google.zxing.b.a;

public final class m extends q
{
  private final double a;
  private final double b;
  private final double c;
  private final String d;

  m(double paramDouble1, double paramDouble2, double paramDouble3, String paramString)
  {
    super(r.f);
    this.a = paramDouble1;
    this.b = paramDouble2;
    this.c = paramDouble3;
    this.d = paramString;
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder(20);
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append(this.b);
    if (this.c > 0.0D)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(this.c);
      localStringBuilder.append('m');
    }
    if (this.d != null)
    {
      localStringBuilder.append(" (");
      localStringBuilder.append(this.d);
      localStringBuilder.append(')');
    }
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.m
 * JD-Core Version:    0.6.2
 */