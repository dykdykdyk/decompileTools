package com.google.zxing.g.a;

import com.google.zxing.FormatException;
import com.google.zxing.common.b;

final class a
{
  final b a;
  r b;
  o c;
  boolean d;

  a(b paramb)
    throws FormatException
  {
    int i = paramb.b;
    if ((i < 21) || ((i & 0x3) != 1))
      throw FormatException.a();
    this.a = paramb;
  }

  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.d);
    for (boolean bool = this.a.a(paramInt2, paramInt1); bool; bool = this.a.a(paramInt1, paramInt2))
      return paramInt3 << 1 | 0x1;
    return paramInt3 << 1;
  }

  final o a()
    throws FormatException
  {
    int k = 0;
    if (this.c != null)
      return this.c;
    int i = 0;
    int j = 0;
    while (i < 6)
    {
      j = a(i, 8, j);
      i += 1;
    }
    j = a(8, 7, a(8, 8, a(7, 8, j)));
    i = 5;
    while (i >= 0)
    {
      j = a(8, i, j);
      i -= 1;
    }
    int n = this.a.b;
    int m = n - 1;
    i = k;
    k = m;
    while (k >= n - 7)
    {
      i = a(8, k, i);
      k -= 1;
    }
    m = n - 8;
    k = i;
    i = m;
    while (i < n)
    {
      k = a(i, 8, k);
      i += 1;
    }
    this.c = o.b(j, k);
    if (this.c != null)
      return this.c;
    throw FormatException.a();
  }

  final r b()
    throws FormatException
  {
    if (this.b != null)
      return this.b;
    int m = this.a.b;
    int i = (m - 17) / 4;
    if (i <= 6)
      return r.b(i);
    int n = m - 11;
    i = 5;
    int j = 0;
    int k;
    while (i >= 0)
    {
      k = m - 9;
      while (k >= n)
      {
        j = a(k, i, j);
        k -= 1;
      }
      i -= 1;
    }
    r localr = r.c(j);
    if ((localr != null) && (localr.a() == m))
    {
      this.b = localr;
      return localr;
    }
    i = 5;
    j = 0;
    while (i >= 0)
    {
      k = m - 9;
      while (k >= n)
      {
        j = a(i, k, j);
        k -= 1;
      }
      i -= 1;
    }
    localr = r.c(j);
    if ((localr != null) && (localr.a() == m))
    {
      this.b = localr;
      return localr;
    }
    throw FormatException.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.a
 * JD-Core Version:    0.6.2
 */