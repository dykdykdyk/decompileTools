package com.google.zxing.e;

import com.google.zxing.NotFoundException;
import com.google.zxing.d;
import com.google.zxing.m;
import com.google.zxing.o;
import java.util.Arrays;
import java.util.Map;

public final class a extends q
{
  static final char[] a = "0123456789-$:/.+ABCD".toCharArray();
  static final int[] b = { 3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14 };
  private static final char[] c = { 65, 66, 67, 68 };
  private final StringBuilder d = new StringBuilder(20);
  private int[] e = new int[80];
  private int f = 0;

  private void a(int paramInt)
  {
    this.e[this.f] = paramInt;
    this.f += 1;
    if (this.f >= this.e.length)
    {
      int[] arrayOfInt = new int[this.f * 2];
      System.arraycopy(this.e, 0, arrayOfInt, 0, this.f);
      this.e = arrayOfInt;
    }
  }

  static boolean a(char[] paramArrayOfChar, char paramChar)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int j;
    int i;
    if (paramArrayOfChar != null)
    {
      j = paramArrayOfChar.length;
      i = 0;
    }
    while (true)
    {
      bool1 = bool2;
      if (i < j)
      {
        if (paramArrayOfChar[i] == paramChar)
          bool1 = true;
      }
      else
        return bool1;
      i += 1;
    }
  }

  private int b(int paramInt)
  {
    int i2 = 2147483647;
    int i3 = paramInt + 7;
    if (i3 >= this.f)
    {
      j = -1;
      return j;
    }
    int[] arrayOfInt = this.e;
    int j = paramInt;
    int m = 2147483647;
    int i = 0;
    label37: int n;
    int k;
    if (j < i3)
    {
      n = arrayOfInt[j];
      k = m;
      if (n < m)
        k = n;
      if (n <= i)
        break label254;
      i = n;
    }
    label102: label246: label248: label251: label254: 
    while (true)
    {
      j += 2;
      m = k;
      break label37;
      int i1 = (m + i) / 2;
      i = 0;
      j = paramInt + 1;
      m = i2;
      if (j < i3)
      {
        n = arrayOfInt[j];
        k = m;
        if (n < m)
          k = n;
        if (n <= i)
          break label251;
        i = n;
      }
      while (true)
      {
        j += 2;
        m = k;
        break label102;
        n = (m + i) / 2;
        k = 128;
        j = 0;
        i = 0;
        if (j < 7)
          if ((j & 0x1) == 0)
          {
            m = i1;
            k >>= 1;
            if (arrayOfInt[(paramInt + j)] <= m)
              break label248;
            i |= k;
          }
        while (true)
        {
          j += 1;
          break label166;
          m = n;
          break label182;
          paramInt = 0;
          while (true)
          {
            if (paramInt >= b.length)
              break label246;
            j = paramInt;
            if (b[paramInt] == i)
              break;
            paramInt += 1;
          }
          return -1;
        }
      }
    }
  }

  public final m a(int paramInt, com.google.zxing.common.a parama, Map<d, ?> paramMap)
    throws NotFoundException
  {
    Arrays.fill(this.e, 0);
    this.f = 0;
    int k = parama.d(0);
    int n = parama.b;
    if (k >= n)
      throw NotFoundException.a();
    int i = 1;
    int j = 0;
    while (k < n)
      if ((parama.a(k) ^ i))
      {
        m = j + 1;
        j = i;
        i = m;
        m = k + 1;
        k = j;
        j = i;
        i = k;
        k = m;
      }
      else
      {
        a(j);
        if (i == 0);
        for (i = 1; ; i = 0)
        {
          j = i;
          i = 1;
          break;
        }
      }
    a(j);
    i = 1;
    if (i < this.f)
    {
      j = b(i);
      if ((j != -1) && (a(c, a[j])))
      {
        k = 0;
        j = i;
        while (j < i + 7)
        {
          k += this.e[j];
          j += 1;
        }
        if ((i == 1) || (this.e[(i - 1)] >= k / 2))
        {
          this.d.setLength(0);
          j = i;
        }
      }
    }
    int i1;
    do
    {
      k = b(j);
      if (k == -1)
      {
        throw NotFoundException.a();
        i += 2;
        break;
        throw NotFoundException.a();
      }
      this.d.append((char)k);
      i1 = j + 8;
      if ((this.d.length() > 1) && (a(c, a[k])))
        break label338;
      j = i1;
    }
    while (i1 < this.f);
    label338: int m = this.e[(i1 - 1)];
    k = 0;
    j = -8;
    while (j < -1)
    {
      k += this.e[(i1 + j)];
      j += 1;
    }
    if ((i1 < this.f) && (m < k / 2))
      throw NotFoundException.a();
    parama = new int[4];
    com.google.zxing.common.a tmp413_412 = parama;
    tmp413_412[0] = 0;
    com.google.zxing.common.a tmp417_413 = tmp413_412;
    tmp417_413[1] = 0;
    com.google.zxing.common.a tmp421_417 = tmp417_413;
    tmp421_417[2] = 0;
    com.google.zxing.common.a tmp425_421 = tmp421_417;
    tmp425_421[3] = 0;
    tmp425_421;
    Object localObject1 = new int[4];
    Object tmp437_435 = localObject1;
    tmp437_435[0] = 0;
    Object tmp441_437 = tmp437_435;
    tmp441_437[1] = 0;
    Object tmp445_441 = tmp441_437;
    tmp445_441[2] = 0;
    Object tmp449_445 = tmp445_441;
    tmp449_445[3] = 0;
    tmp449_445;
    int i2 = this.d.length() - 1;
    j = 0;
    k = i;
    int i3;
    while (true)
    {
      n = b[this.d.charAt(j)];
      m = 6;
      while (m >= 0)
      {
        i3 = (m & 0x1) + (n & 0x1) * 2;
        parama[i3] += this.e[(k + m)];
        localObject1[i3] += 1;
        n >>= 1;
        m -= 1;
      }
      if (j >= i2)
        break;
      k += 8;
      j += 1;
    }
    Object localObject2 = new float[4];
    float[] arrayOfFloat = new float[4];
    j = 0;
    while (j < 2)
    {
      arrayOfFloat[j] = 0.0F;
      arrayOfFloat[(j + 2)] = ((parama[j] / localObject1[j] + parama[(j + 2)] / localObject1[(j + 2)]) / 2.0F);
      localObject2[j] = arrayOfFloat[(j + 2)];
      localObject2[(j + 2)] = ((parama[(j + 2)] * 2.0F + 1.5F) / localObject1[(j + 2)]);
      j += 1;
    }
    j = 0;
    k = i;
    while (true)
    {
      n = b[this.d.charAt(j)];
      m = 6;
      while (m >= 0)
      {
        i3 = (m & 0x1) + (n & 0x1) * 2;
        int i4 = this.e[(k + m)];
        if ((i4 < arrayOfFloat[i3]) || (i4 > localObject2[i3]))
          throw NotFoundException.a();
        n >>= 1;
        m -= 1;
      }
      if (j >= i2)
        break;
      k += 8;
      j += 1;
    }
    j = 0;
    while (j < this.d.length())
    {
      this.d.setCharAt(j, a[this.d.charAt(j)]);
      j += 1;
    }
    char c1 = this.d.charAt(0);
    if (!a(c, c1))
      throw NotFoundException.a();
    c1 = this.d.charAt(this.d.length() - 1);
    if (!a(c, c1))
      throw NotFoundException.a();
    if (this.d.length() <= 3)
      throw NotFoundException.a();
    if ((paramMap == null) || (!paramMap.containsKey(d.i)))
    {
      this.d.deleteCharAt(this.d.length() - 1);
      this.d.deleteCharAt(0);
    }
    j = 0;
    k = 0;
    while (k < i)
    {
      m = this.e[k];
      k += 1;
      j = m + j;
    }
    float f1 = j;
    while (i < i1 - 1)
    {
      j += this.e[i];
      i += 1;
    }
    float f2 = j;
    parama = this.d.toString();
    paramMap = new o(f1, paramInt);
    localObject1 = new o(f2, paramInt);
    localObject2 = com.google.zxing.a.b;
    return new m(parama, null, new o[] { paramMap, localObject1 }, (com.google.zxing.a)localObject2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a
 * JD-Core Version:    0.6.2
 */