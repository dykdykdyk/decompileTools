package com.google.zxing.g.a;

public enum n
{
  private static final n[] f = { b, a, d, c };
  public final int e;

  private n(int paramInt)
  {
    this.e = paramInt;
  }

  public static n a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= f.length))
      throw new IllegalArgumentException();
    return f[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.n
 * JD-Core Version:    0.6.2
 */