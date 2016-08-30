package com.google.zxing.e;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.d;
import com.google.zxing.m;
import com.google.zxing.o;
import java.util.Arrays;
import java.util.Map;

public final class e extends q
{
  static final int[] a = arrayOfInt;
  private static final char[] b = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".toCharArray();
  private static final int c = arrayOfInt[39];
  private final boolean d;
  private final boolean e;
  private final StringBuilder f;
  private final int[] g;

  static
  {
    int[] arrayOfInt = new int[44];
    arrayOfInt[0] = 52;
    arrayOfInt[1] = 289;
    arrayOfInt[2] = 97;
    arrayOfInt[3] = 352;
    arrayOfInt[4] = 49;
    arrayOfInt[5] = 304;
    arrayOfInt[6] = 112;
    arrayOfInt[7] = 37;
    arrayOfInt[8] = 292;
    arrayOfInt[9] = 100;
    arrayOfInt[10] = 265;
    arrayOfInt[11] = 73;
    arrayOfInt[12] = 328;
    arrayOfInt[13] = 25;
    arrayOfInt[14] = 280;
    arrayOfInt[15] = 88;
    arrayOfInt[16] = 13;
    arrayOfInt[17] = 268;
    arrayOfInt[18] = 76;
    arrayOfInt[19] = 28;
    arrayOfInt[20] = 259;
    arrayOfInt[21] = 67;
    arrayOfInt[22] = 322;
    arrayOfInt[23] = 19;
    arrayOfInt[24] = 274;
    arrayOfInt[25] = 82;
    arrayOfInt[26] = 7;
    arrayOfInt[27] = 262;
    arrayOfInt[28] = 70;
    arrayOfInt[29] = 22;
    arrayOfInt[30] = 385;
    arrayOfInt[31] = 'Á';
    arrayOfInt[32] = 448;
    arrayOfInt[33] = '';
    arrayOfInt[34] = 400;
    arrayOfInt[35] = 'Ð';
    arrayOfInt[36] = '';
    arrayOfInt[37] = 388;
    arrayOfInt[38] = 'Ä';
    arrayOfInt[39] = '';
    arrayOfInt[40] = '¨';
    arrayOfInt[41] = '¢';
    arrayOfInt[42] = '';
    arrayOfInt[43] = 42;
    arrayOfInt;
  }

  public e()
  {
    this(false);
  }

  public e(boolean paramBoolean)
  {
    this(paramBoolean, (byte)0);
  }

  private e(boolean paramBoolean, byte paramByte)
  {
    this.d = paramBoolean;
    this.e = false;
    this.f = new StringBuilder(20);
    this.g = new int[9];
  }

  private static int a(int[] paramArrayOfInt)
  {
    int i4 = paramArrayOfInt.length;
    int i;
    for (int j = 0; ; j = i)
    {
      i = 2147483647;
      int i1 = paramArrayOfInt.length;
      int k = 0;
      while (k < i1)
      {
        n = paramArrayOfInt[k];
        m = i;
        if (n < i)
        {
          m = i;
          if (n > j)
            m = n;
        }
        k += 1;
        i = m;
      }
      int n = 0;
      j = 0;
      int m = 0;
      int i2;
      for (k = 0; n < i4; k = i1)
      {
        int i5 = paramArrayOfInt[n];
        int i3 = j;
        i2 = m;
        i1 = k;
        if (i5 > i)
        {
          i3 = j | 1 << i4 - 1 - n;
          i1 = k + 1;
          i2 = m + i5;
        }
        n += 1;
        j = i3;
        m = i2;
      }
      if (k == 3)
      {
        n = k;
        k = 0;
        while (true)
        {
          i1 = j;
          if (k < i4)
          {
            i1 = j;
            if (n > 0)
            {
              i2 = paramArrayOfInt[k];
              i1 = n;
              if (i2 <= i)
                break label204;
              i1 = n - 1;
              if (i2 * 2 < m)
                break label204;
              i1 = -1;
            }
          }
          return i1;
          label204: k += 1;
          n = i1;
        }
      }
      if (k <= 3)
        return -1;
    }
  }

  public final m a(int paramInt, com.google.zxing.common.a parama, Map<d, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    Object localObject2 = this.g;
    Arrays.fill((int[])localObject2, 0);
    Object localObject1 = this.f;
    ((StringBuilder)localObject1).setLength(0);
    int i2 = parama.b;
    int i = parama.c(0);
    int n = 0;
    int m = 0;
    int i3 = localObject2.length;
    int k = i;
    int j;
    while (true)
      if (k < i2)
        if ((parama.a(k) ^ m))
        {
          localObject2[n] += 1;
          j = m;
          m = i;
          k += 1;
          i = m;
          m = j;
        }
        else if (n == i3 - 1)
        {
          if ((a((int[])localObject2) == c) && (parama.a(Math.max(0, i - (k - i) / 2), i)))
          {
            paramMap = new int[2];
            paramMap[0] = i;
            paramMap[1] = k;
            i = parama.c(paramMap[1]);
            n = parama.b;
          }
        }
    while (true)
    {
      a(parama, i, (int[])localObject2);
      k = a((int[])localObject2);
      int i1;
      if (k < 0)
      {
        throw NotFoundException.a();
        j = i + (localObject2[0] + localObject2[1]);
        System.arraycopy(localObject2, 2, localObject2, 0, i3 - 2);
        localObject2[(i3 - 2)] = 0;
        localObject2[(i3 - 1)] = 0;
        for (i = n - 1; ; i = n)
        {
          localObject2[i] = 1;
          if (m != 0)
            break label299;
          i1 = 1;
          m = j;
          n = i;
          j = i1;
          break;
          n += 1;
          j = i;
        }
        label299: i1 = 0;
        m = j;
        n = i;
        j = i1;
        break;
        throw NotFoundException.a();
      }
      j = 0;
      char c1;
      while (j < a.length)
      {
        if (a[j] == k)
        {
          c1 = b[j];
          ((StringBuilder)localObject1).append(c1);
          m = localObject2.length;
          j = 0;
          k = i;
          while (j < m)
          {
            k += localObject2[j];
            j += 1;
          }
        }
        j += 1;
      }
      throw NotFoundException.a();
      m = parama.c(k);
      if (c1 == '*')
      {
        ((StringBuilder)localObject1).setLength(((StringBuilder)localObject1).length() - 1);
        k = 0;
        i1 = localObject2.length;
        j = 0;
        while (j < i1)
        {
          k += localObject2[j];
          j += 1;
        }
        if ((m != n) && ((m - i - k) * 2 < k))
          throw NotFoundException.a();
        if (this.d)
        {
          n = ((StringBuilder)localObject1).length() - 1;
          m = 0;
          j = 0;
          while (j < n)
          {
            m += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(this.f.charAt(j));
            j += 1;
          }
          if (((StringBuilder)localObject1).charAt(n) != b[(m % 43)])
            throw ChecksumException.a();
          ((StringBuilder)localObject1).setLength(n);
        }
        if (((StringBuilder)localObject1).length() == 0)
          throw NotFoundException.a();
        if (this.e)
        {
          m = ((CharSequence)localObject1).length();
          parama = new StringBuilder(m);
          j = 0;
          if (j < m)
          {
            char c2 = ((CharSequence)localObject1).charAt(j);
            if ((c2 == '+') || (c2 == '$') || (c2 == '%') || (c2 == '/'))
            {
              n = ((CharSequence)localObject1).charAt(j + 1);
              c1 = '\000';
              switch (c2)
              {
              default:
                label736: parama.append(c1);
                j += 1;
              case '+':
              case '$':
              case '%':
              case '/':
              }
            }
            while (true)
            {
              j += 1;
              break;
              if ((n >= 65) && (n <= 90))
              {
                c1 = (char)(n + 32);
                break label736;
              }
              throw FormatException.a();
              if ((n >= 65) && (n <= 90))
              {
                c1 = (char)(n - 64);
                break label736;
              }
              throw FormatException.a();
              if ((n >= 65) && (n <= 69))
              {
                c1 = (char)(n - 38);
                break label736;
              }
              if ((n >= 70) && (n <= 87))
              {
                c1 = (char)(n - 11);
                break label736;
              }
              throw FormatException.a();
              if ((n >= 65) && (n <= 79))
              {
                c1 = (char)(n - 32);
                break label736;
              }
              if (n == 90)
              {
                c1 = ':';
                break label736;
              }
              throw FormatException.a();
              parama.append(c2);
            }
          }
        }
        for (parama = parama.toString(); ; parama = ((StringBuilder)localObject1).toString())
        {
          float f1 = (paramMap[1] + paramMap[0]) / 2.0F;
          float f2 = i;
          float f3 = k / 2.0F;
          paramMap = new o(f1, paramInt);
          localObject1 = new o(f2 + f3, paramInt);
          localObject2 = com.google.zxing.a.c;
          return new m(parama, null, new o[] { paramMap, localObject1 }, (com.google.zxing.a)localObject2);
        }
      }
      i = m;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.e
 * JD-Core Version:    0.6.2
 */