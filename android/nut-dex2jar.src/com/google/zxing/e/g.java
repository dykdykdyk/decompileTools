package com.google.zxing.e;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.d;
import com.google.zxing.m;
import com.google.zxing.o;
import java.util.Arrays;
import java.util.Map;

public final class g extends q
{
  private static final char[] a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();
  private static final int[] b = arrayOfInt;
  private static final int c = arrayOfInt[47];
  private final StringBuilder d = new StringBuilder(20);
  private final int[] e = new int[6];

  static
  {
    int[] arrayOfInt = new int[48];
    arrayOfInt[0] = 276;
    arrayOfInt[1] = 328;
    arrayOfInt[2] = 324;
    arrayOfInt[3] = 322;
    arrayOfInt[4] = 296;
    arrayOfInt[5] = 292;
    arrayOfInt[6] = 290;
    arrayOfInt[7] = 336;
    arrayOfInt[8] = 274;
    arrayOfInt[9] = 266;
    arrayOfInt[10] = 424;
    arrayOfInt[11] = 420;
    arrayOfInt[12] = 418;
    arrayOfInt[13] = 404;
    arrayOfInt[14] = 402;
    arrayOfInt[15] = 394;
    arrayOfInt[16] = 360;
    arrayOfInt[17] = 356;
    arrayOfInt[18] = 354;
    arrayOfInt[19] = 308;
    arrayOfInt[20] = 282;
    arrayOfInt[21] = 344;
    arrayOfInt[22] = 332;
    arrayOfInt[23] = 326;
    arrayOfInt[24] = 300;
    arrayOfInt[25] = 278;
    arrayOfInt[26] = 436;
    arrayOfInt[27] = 434;
    arrayOfInt[28] = 428;
    arrayOfInt[29] = 422;
    arrayOfInt[30] = 406;
    arrayOfInt[31] = 410;
    arrayOfInt[32] = 364;
    arrayOfInt[33] = 358;
    arrayOfInt[34] = 310;
    arrayOfInt[35] = 314;
    arrayOfInt[36] = 302;
    arrayOfInt[37] = 468;
    arrayOfInt[38] = 466;
    arrayOfInt[39] = 458;
    arrayOfInt[40] = 366;
    arrayOfInt[41] = 374;
    arrayOfInt[42] = 430;
    arrayOfInt[43] = 294;
    arrayOfInt[44] = 474;
    arrayOfInt[45] = 470;
    arrayOfInt[46] = 306;
    arrayOfInt[47] = 350;
    arrayOfInt;
  }

  private static int a(int[] paramArrayOfInt)
  {
    int i1 = paramArrayOfInt.length;
    int j = paramArrayOfInt.length;
    int i = 0;
    for (int k = 0; i < j; k = m + k)
    {
      m = paramArrayOfInt[i];
      i += 1;
    }
    int m = 0;
    for (i = 0; ; i = j)
    {
      j = i;
      int i2;
      if (m < i1)
      {
        i2 = Math.round(paramArrayOfInt[m] * 9.0F / k);
        if ((i2 <= 0) || (i2 > 4))
          j = -1;
      }
      else
      {
        return j;
      }
      if ((m & 0x1) == 0)
      {
        int n = 0;
        while (true)
        {
          j = i;
          if (n >= i2)
            break;
          n += 1;
          i = i << 1 | 0x1;
        }
      }
      j = i << i2;
      m += 1;
    }
  }

  private static void a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    throws ChecksumException
  {
    int i = 1;
    int k = paramInt1 - 1;
    int m;
    int i1;
    for (int j = 0; ; j = i1 * m + j)
    {
      m = i;
      if (k < 0)
        break;
      i1 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(paramCharSequence.charAt(k));
      int n = m + 1;
      i = n;
      if (n > paramInt2)
        i = 1;
      k -= 1;
    }
    if (paramCharSequence.charAt(paramInt1) != a[(j % 47)])
      throw ChecksumException.a();
  }

  public final m a(int paramInt, com.google.zxing.common.a parama, Map<d, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    int i1 = parama.b;
    int i = parama.c(0);
    Arrays.fill(this.e, 0);
    paramMap = this.e;
    int m = 0;
    int i2 = paramMap.length;
    int n = 0;
    int k = i;
    int j;
    while (true)
      if (k < i1)
        if ((parama.a(k) ^ m))
        {
          paramMap[n] += 1;
          j = m;
          k += 1;
          m = j;
        }
        else if (n == i2 - 1)
        {
          if (a(paramMap) == c)
          {
            paramMap = new int[2];
            paramMap[0] = i;
            paramMap[1] = k;
            i = parama.c(paramMap[1]);
            n = parama.b;
            localObject2 = this.e;
            Arrays.fill((int[])localObject2, 0);
            localObject1 = this.d;
            ((StringBuilder)localObject1).setLength(0);
          }
        }
    label262: char c1;
    do
    {
      j = i;
      a(parama, j, (int[])localObject2);
      k = a((int[])localObject2);
      if (k < 0)
      {
        throw NotFoundException.a();
        i += paramMap[0] + paramMap[1];
        System.arraycopy(paramMap, 2, paramMap, 0, i2 - 2);
        paramMap[(i2 - 2)] = 0;
        paramMap[(i2 - 1)] = 0;
        for (j = n - 1; ; j = n + 1)
        {
          paramMap[j] = 1;
          if (m != 0)
            break label262;
          m = 1;
          n = j;
          j = m;
          break;
        }
        m = 0;
        n = j;
        j = m;
        break;
        throw NotFoundException.a();
      }
      i = 0;
      while (i < b.length)
      {
        if (b[i] == k)
        {
          c1 = a[i];
          ((StringBuilder)localObject1).append(c1);
          m = localObject2.length;
          i = 0;
          k = j;
          while (i < m)
          {
            k += localObject2[i];
            i += 1;
          }
        }
        i += 1;
      }
      throw NotFoundException.a();
      m = parama.c(k);
      i = m;
    }
    while (c1 != '*');
    ((StringBuilder)localObject1).deleteCharAt(((StringBuilder)localObject1).length() - 1);
    k = 0;
    i1 = localObject2.length;
    i = 0;
    while (i < i1)
    {
      k += localObject2[i];
      i += 1;
    }
    if ((m == n) || (!parama.a(m)))
      throw NotFoundException.a();
    if (((StringBuilder)localObject1).length() < 2)
      throw NotFoundException.a();
    i = ((CharSequence)localObject1).length();
    a((CharSequence)localObject1, i - 2, 20);
    a((CharSequence)localObject1, i - 1, 15);
    ((StringBuilder)localObject1).setLength(((StringBuilder)localObject1).length() - 2);
    m = ((CharSequence)localObject1).length();
    parama = new StringBuilder(m);
    i = 0;
    if (i < m)
    {
      char c2 = ((CharSequence)localObject1).charAt(i);
      if ((c2 >= 'a') && (c2 <= 'd'))
      {
        if (i >= m - 1)
          throw FormatException.a();
        n = ((CharSequence)localObject1).charAt(i + 1);
        c1 = '\000';
        switch (c2)
        {
        default:
          label632: parama.append(c1);
          i += 1;
        case 'd':
        case 'a':
        case 'b':
        case 'c':
        }
      }
      while (true)
      {
        i += 1;
        break;
        if ((n >= 65) && (n <= 90))
        {
          c1 = (char)(n + 32);
          break label632;
        }
        throw FormatException.a();
        if ((n >= 65) && (n <= 90))
        {
          c1 = (char)(n - 64);
          break label632;
        }
        throw FormatException.a();
        if ((n >= 65) && (n <= 69))
        {
          c1 = (char)(n - 38);
          break label632;
        }
        if ((n >= 70) && (n <= 74))
        {
          c1 = (char)(n - 11);
          break label632;
        }
        if ((n >= 75) && (n <= 79))
        {
          c1 = (char)(n + 16);
          break label632;
        }
        if ((n >= 80) && (n <= 83))
        {
          c1 = (char)(n + 43);
          break label632;
        }
        if ((n >= 84) && (n <= 90))
        {
          c1 = '';
          break label632;
        }
        throw FormatException.a();
        if ((n >= 65) && (n <= 79))
        {
          c1 = (char)(n - 32);
          break label632;
        }
        if (n == 90)
        {
          c1 = ':';
          break label632;
        }
        throw FormatException.a();
        parama.append(c2);
      }
    }
    parama = parama.toString();
    float f1 = (paramMap[1] + paramMap[0]) / 2.0F;
    float f2 = j;
    float f3 = k / 2.0F;
    paramMap = new o(f1, paramInt);
    Object localObject1 = new o(f2 + f3, paramInt);
    Object localObject2 = com.google.zxing.a.d;
    return new m(parama, null, new o[] { paramMap, localObject1 }, (com.google.zxing.a)localObject2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.g
 * JD-Core Version:    0.6.2
 */