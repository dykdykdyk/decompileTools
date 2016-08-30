package com.google.zxing.g.a;

public enum p
{
  public final int k;
  private final int[] l;

  private p(int[] paramArrayOfInt, int paramInt)
  {
    this.l = paramArrayOfInt;
    this.k = paramInt;
  }

  public static p a(int paramInt)
  {
    switch (paramInt)
    {
    case 6:
    case 10:
    case 11:
    case 12:
    default:
      throw new IllegalArgumentException();
    case 0:
      return a;
    case 1:
      return b;
    case 2:
      return c;
    case 3:
      return d;
    case 4:
      return e;
    case 5:
      return h;
    case 7:
      return f;
    case 8:
      return g;
    case 9:
      return i;
    case 13:
    }
    return j;
  }

  public final int a(r paramr)
  {
    int n = paramr.a;
    if (n <= 9)
      n = 0;
    while (true)
    {
      return this.l[n];
      if (n <= 26)
        n = 1;
      else
        n = 2;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.p
 * JD-Core Version:    0.6.2
 */