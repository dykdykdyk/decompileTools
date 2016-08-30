package com.google.zxing.common;

import com.google.zxing.NotFoundException;
import com.google.zxing.g;
import java.lang.reflect.Array;

public final class j extends h
{
  private b b;

  public j(g paramg)
  {
    super(paramg);
  }

  private static int a(int paramInt1, int paramInt2)
  {
    int i;
    if (paramInt1 < 2)
      i = 2;
    do
    {
      return i;
      i = paramInt2;
    }
    while (paramInt1 > paramInt2);
    return paramInt1;
  }

  public final b a()
    throws NotFoundException
  {
    if (this.b != null)
      return this.b;
    Object localObject = this.a;
    int i9 = ((g)localObject).a;
    int i10 = ((g)localObject).b;
    int i2;
    if ((i9 >= 40) && (i10 >= 40))
    {
      localObject = ((g)localObject).a();
      i2 = i9 >> 3;
      if ((i9 & 0x7) == 0)
        break label817;
      i2 += 1;
    }
    label151: label793: label796: label799: label805: label808: label811: label817: 
    while (true)
    {
      int i3 = i10 >> 3;
      if ((i10 & 0x7) != 0)
        i3 += 1;
      while (true)
      {
        int[][] arrayOfInt = (int[][])Array.newInstance(Integer.TYPE, new int[] { i3, i2 });
        int i4 = 0;
        int i5;
        int i;
        if (i4 < i3)
        {
          i5 = i4 << 3;
          i = i10 - 8;
          if (i5 <= i)
            break label811;
          i5 = i;
        }
        while (true)
        {
          int i6 = 0;
          int j;
          if (i6 < i2)
          {
            i = i6 << 3;
            j = i9 - 8;
            if (i <= j)
              break label808;
            i = j;
          }
          while (true)
          {
            int i1 = 0;
            int k = 255;
            j = 0;
            int m = 0;
            int n = i5 * i9 + i;
            i = i1;
            label200: label210: int i7;
            if (m < 8)
            {
              i1 = 0;
              if (i1 < 8)
              {
                i7 = localObject[(n + i1)] & 0xFF;
                if (i7 >= k)
                  break label805;
                k = i7;
              }
            }
            while (true)
            {
              if (i7 > j)
                j = i7;
              while (true)
              {
                i1 += 1;
                i += i7;
                break label210;
                if (j - k > 24)
                {
                  i1 = n + i9;
                  n = m + 1;
                  m = i1;
                  while (true)
                  {
                    i8 = m;
                    i7 = n;
                    i1 = i;
                    if (n >= 8)
                      break;
                    i1 = 0;
                    while (i1 < 8)
                    {
                      i += (localObject[(m + i1)] & 0xFF);
                      i1 += 1;
                    }
                    n += 1;
                    m += i9;
                  }
                }
                i1 = i;
                i7 = m;
                int i8 = n;
                n = i8 + i9;
                i = i1;
                m = i7 + 1;
                break label200;
                i >>= 6;
                if (j - k <= 24)
                {
                  i = k / 2;
                  if ((i4 <= 0) || (i6 <= 0))
                    break label799;
                  j = (arrayOfInt[(i4 - 1)][i6] + arrayOfInt[i4][(i6 - 1)] * 2 + arrayOfInt[(i4 - 1)][(i6 - 1)]) / 4;
                  if (k >= j)
                    break label799;
                  i = j;
                }
                while (true)
                {
                  arrayOfInt[i4][i6] = i;
                  i6 += 1;
                  break label151;
                  i4 += 1;
                  break;
                  b localb = new b(i9, i10);
                  i = 0;
                  if (i < i3)
                  {
                    j = i << 3;
                    k = i10 - 8;
                    if (j <= k)
                      break label793;
                    j = k;
                    k = 0;
                    if (k < i2)
                    {
                      m = k << 3;
                      n = i9 - 8;
                      if (m <= n)
                        break label796;
                      m = n;
                    }
                  }
                  while (true)
                  {
                    i4 = a(k, i2 - 3);
                    i5 = a(i, i3 - 3);
                    i1 = 0;
                    n = -2;
                    while (n <= 2)
                    {
                      int[] arrayOfInt1 = arrayOfInt[(i5 + n)];
                      i6 = arrayOfInt1[(i4 - 2)];
                      i7 = arrayOfInt1[(i4 - 1)];
                      i8 = arrayOfInt1[i4];
                      int i11 = arrayOfInt1[(i4 + 1)];
                      i1 += arrayOfInt1[(i4 + 2)] + (i6 + i7 + i8 + i11);
                      n += 1;
                    }
                    i5 = i1 / 25;
                    i1 = 0;
                    n = j * i9 + m;
                    while (i1 < 8)
                    {
                      i4 = 0;
                      while (i4 < 8)
                      {
                        if ((localObject[(n + i4)] & 0xFF) <= i5)
                          localb.b(m + i4, j + i1);
                        i4 += 1;
                      }
                      i1 += 1;
                      n += i9;
                    }
                    k += 1;
                    break label526;
                    i += 1;
                    break;
                    for (this.b = localb; ; this.b = super.a())
                      return this.b;
                    break label524;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.j
 * JD-Core Version:    0.6.2
 */