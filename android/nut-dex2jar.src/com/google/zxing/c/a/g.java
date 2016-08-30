package com.google.zxing.c.a;

import com.google.zxing.FormatException;

public final class g
{
  private static final g[] h = { new g(1, 10, 10, 8, 8, new i(5, new h(1, 3, 0), 0)), new g(2, 12, 12, 10, 10, new i(7, new h(1, 5, 0), 0)), new g(3, 14, 14, 12, 12, new i(10, new h(1, 8, 0), 0)), new g(4, 16, 16, 14, 14, new i(12, new h(1, 12, 0), 0)), new g(5, 18, 18, 16, 16, new i(14, new h(1, 18, 0), 0)), new g(6, 20, 20, 18, 18, new i(18, new h(1, 22, 0), 0)), new g(7, 22, 22, 20, 20, new i(20, new h(1, 30, 0), 0)), new g(8, 24, 24, 22, 22, new i(24, new h(1, 36, 0), 0)), new g(9, 26, 26, 24, 24, new i(28, new h(1, 44, 0), 0)), new g(10, 32, 32, 14, 14, new i(36, new h(1, 62, 0), 0)), new g(11, 36, 36, 16, 16, new i(42, new h(1, 86, 0), 0)), new g(12, 40, 40, 18, 18, new i(48, new h(1, 114, 0), 0)), new g(13, 44, 44, 20, 20, new i(56, new h(1, 144, 0), 0)), new g(14, 48, 48, 22, 22, new i(68, new h(1, 174, 0), 0)), new g(15, 52, 52, 24, 24, new i(42, new h(2, 102, 0), 0)), new g(16, 64, 64, 14, 14, new i(56, new h(2, 140, 0), 0)), new g(17, 72, 72, 16, 16, new i(36, new h(4, 92, 0), 0)), new g(18, 80, 80, 18, 18, new i(48, new h(4, 114, 0), 0)), new g(19, 88, 88, 20, 20, new i(56, new h(4, 144, 0), 0)), new g(20, 96, 96, 22, 22, new i(68, new h(4, 174, 0), 0)), new g(21, 104, 104, 24, 24, new i(56, new h(6, 136, 0), 0)), new g(22, 120, 120, 18, 18, new i(68, new h(6, 175, 0), 0)), new g(23, 132, 132, 20, 20, new i(62, new h(8, 163, 0), 0)), new g(24, 144, 144, 22, 22, new i(new h(8, 156, 0), new h(2, 155, 0), 0)), new g(25, 8, 18, 6, 16, new i(7, new h(1, 5, 0), 0)), new g(26, 8, 32, 6, 14, new i(11, new h(1, 10, 0), 0)), new g(27, 12, 26, 10, 24, new i(14, new h(1, 16, 0), 0)), new g(28, 12, 36, 10, 16, new i(18, new h(1, 22, 0), 0)), new g(29, 16, 36, 14, 16, new i(24, new h(1, 32, 0), 0)), new g(30, 16, 48, 14, 22, new i(28, new h(1, 49, 0), 0)) };
  final int a;
  final int b;
  final int c;
  final int d;
  final int e;
  final i f;
  final int g;

  private g(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, i parami)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = paramInt4;
    this.e = paramInt5;
    this.f = parami;
    paramInt3 = parami.a;
    parami = parami.b;
    paramInt4 = parami.length;
    paramInt2 = 0;
    paramInt1 = i;
    while (paramInt1 < paramInt4)
    {
      Object localObject = parami[paramInt1];
      paramInt5 = localObject.a;
      paramInt2 += (localObject.b + paramInt3) * paramInt5;
      paramInt1 += 1;
    }
    this.g = paramInt2;
  }

  public static g a(int paramInt1, int paramInt2)
    throws FormatException
  {
    if (((paramInt1 & 0x1) != 0) || ((paramInt2 & 0x1) != 0))
      throw FormatException.a();
    g[] arrayOfg = h;
    int j = arrayOfg.length;
    int i = 0;
    while (i < j)
    {
      g localg = arrayOfg[i];
      if ((localg.b == paramInt1) && (localg.c == paramInt2))
        return localg;
      i += 1;
    }
    throw FormatException.a();
  }

  public final String toString()
  {
    return String.valueOf(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.c.a.g
 * JD-Core Version:    0.6.2
 */