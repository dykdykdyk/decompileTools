package com.google.zxing.g.a;

import com.google.zxing.common.b;

abstract class c
{
  private static final c[] a = { new d(0), new e(0), new f(0), new g(0), new h(0), new i(0), new j(0), new k(0) };

  static c a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 7))
      throw new IllegalArgumentException();
    return a[paramInt];
  }

  final void a(b paramb, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      int j = 0;
      while (j < paramInt)
      {
        if (a(i, j))
          paramb.c(j, i);
        j += 1;
      }
      i += 1;
    }
  }

  abstract boolean a(int paramInt1, int paramInt2);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.c
 * JD-Core Version:    0.6.2
 */