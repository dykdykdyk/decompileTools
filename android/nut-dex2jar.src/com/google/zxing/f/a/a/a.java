package com.google.zxing.f.a.a;

import com.google.zxing.ChecksumException;

public final class a
{
  public final b a = b.a;

  public final int[] a(c paramc)
    throws ChecksumException
  {
    int m = paramc.b.length - 1;
    int[] arrayOfInt = new int[m];
    int j = 0;
    int i = 1;
    while ((i < this.a.f) && (j < m))
    {
      int k = j;
      if (paramc.b(i) == 0)
      {
        arrayOfInt[j] = this.a.a(i);
        k = j + 1;
      }
      i += 1;
      j = k;
    }
    if (j != m)
      throw ChecksumException.a();
    return arrayOfInt;
  }

  public final int[] a(c paramc1, c paramc2, int[] paramArrayOfInt)
  {
    int j = paramc2.b.length - 1;
    int[] arrayOfInt = new int[j];
    int i = 1;
    while (i <= j)
    {
      arrayOfInt[(j - i)] = this.a.d(i, paramc2.a(i));
      i += 1;
    }
    paramc2 = new c(this.a, arrayOfInt);
    j = paramArrayOfInt.length;
    arrayOfInt = new int[j];
    i = 0;
    while (i < j)
    {
      int m = this.a.a(paramArrayOfInt[i]);
      int k = this.a.c(0, paramc1.b(m));
      m = this.a.a(paramc2.b(m));
      arrayOfInt[i] = this.a.d(k, m);
      i += 1;
    }
    return arrayOfInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.a.a.a
 * JD-Core Version:    0.6.2
 */