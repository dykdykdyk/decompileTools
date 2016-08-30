package com.google.zxing.g.a;

final class o
{
  private static final int[][] c = { { 21522, 0 }, { 20773, 1 }, { 24188, 2 }, { 23371, 3 }, { 17913, 4 }, { 16590, 5 }, { 20375, 6 }, { 19104, 7 }, { 30660, 8 }, { 29427, 9 }, { 32170, 10 }, { 30877, 11 }, { 26159, 12 }, { 25368, 13 }, { 27713, 14 }, { 26998, 15 }, { 5769, 16 }, { 5054, 17 }, { 7399, 18 }, { 6608, 19 }, { 1890, 20 }, { 597, 21 }, { 3340, 22 }, { 2107, 23 }, { 13663, 24 }, { 12392, 25 }, { 16177, 26 }, { 14854, 27 }, { 9396, 28 }, { 8579, 29 }, { 11994, 30 }, { 11245, 31 } };
  private static final int[] d = { 0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4 };
  final n a;
  final byte b;

  private o(int paramInt)
  {
    this.a = n.a(paramInt >> 3 & 0x3);
    this.b = ((byte)(paramInt & 0x7));
  }

  static int a(int paramInt1, int paramInt2)
  {
    paramInt1 ^= paramInt2;
    paramInt2 = d[(paramInt1 & 0xF)];
    int i = d[(paramInt1 >>> 4 & 0xF)];
    int j = d[(paramInt1 >>> 8 & 0xF)];
    int k = d[(paramInt1 >>> 12 & 0xF)];
    int m = d[(paramInt1 >>> 16 & 0xF)];
    int n = d[(paramInt1 >>> 20 & 0xF)];
    int i1 = d[(paramInt1 >>> 24 & 0xF)];
    return d[(paramInt1 >>> 28 & 0xF)] + (paramInt2 + i + j + k + m + n + i1);
  }

  static o b(int paramInt1, int paramInt2)
  {
    o localo = c(paramInt1, paramInt2);
    if (localo != null)
      return localo;
    return c(paramInt1 ^ 0x5412, paramInt2 ^ 0x5412);
  }

  private static o c(int paramInt1, int paramInt2)
  {
    int j = 2147483647;
    int[][] arrayOfInt = c;
    int n = arrayOfInt.length;
    int k = 0;
    int i = 0;
    int[] arrayOfInt1;
    int i1;
    int m;
    if (k < n)
    {
      arrayOfInt1 = arrayOfInt[k];
      i1 = arrayOfInt1[0];
      if ((i1 == paramInt1) || (i1 == paramInt2))
        return new o(arrayOfInt1[1]);
      m = a(paramInt1, i1);
      if (m >= j)
        break label139;
      i = arrayOfInt1[1];
      j = m;
    }
    label139: 
    while (true)
    {
      if (paramInt1 != paramInt2)
      {
        m = a(paramInt2, i1);
        if (m < j)
        {
          i = arrayOfInt1[1];
          j = m;
        }
      }
      while (true)
      {
        k += 1;
        break;
        if (j <= 3)
          return new o(i);
        return null;
      }
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof o));
    do
    {
      return false;
      paramObject = (o)paramObject;
    }
    while ((this.a != paramObject.a) || (this.b != paramObject.b));
    return true;
  }

  public final int hashCode()
  {
    return this.a.ordinal() << 3 | this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.o
 * JD-Core Version:    0.6.2
 */