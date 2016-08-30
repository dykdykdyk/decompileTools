package com.google.zxing.e;

import com.google.zxing.NotFoundException;

public final class j extends x
{
  private final int[] a = new int[4];

  protected final int a(com.google.zxing.common.a parama, int[] paramArrayOfInt, StringBuilder paramStringBuilder)
    throws NotFoundException
  {
    int[] arrayOfInt = this.a;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int m = parama.b;
    int i = paramArrayOfInt[1];
    int j = 0;
    int n;
    int k;
    while ((j < 4) && (i < m))
    {
      paramStringBuilder.append((char)(a(parama, arrayOfInt, i, d) + 48));
      n = arrayOfInt.length;
      k = 0;
      while (k < n)
      {
        i += arrayOfInt[k];
        k += 1;
      }
      j += 1;
    }
    i = a(parama, i, true, c)[1];
    j = 0;
    while ((j < 4) && (i < m))
    {
      paramStringBuilder.append((char)(a(parama, arrayOfInt, i, d) + 48));
      n = arrayOfInt.length;
      k = 0;
      while (k < n)
      {
        i += arrayOfInt[k];
        k += 1;
      }
      j += 1;
    }
    return i;
  }

  final com.google.zxing.a b()
  {
    return com.google.zxing.a.g;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.j
 * JD-Core Version:    0.6.2
 */