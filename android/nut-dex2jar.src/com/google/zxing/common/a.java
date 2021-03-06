package com.google.zxing.common;

import java.util.Arrays;

public final class a
  implements Cloneable
{
  public int[] a;
  public int b;

  public a()
  {
    this.b = 0;
    this.a = new int[1];
  }

  public a(int paramInt)
  {
    this.b = paramInt;
    this.a = f(paramInt);
  }

  private a(int[] paramArrayOfInt, int paramInt)
  {
    this.a = paramArrayOfInt;
    this.b = paramInt;
  }

  private void e(int paramInt)
  {
    if (paramInt > this.a.length * 32)
    {
      int[] arrayOfInt = f(paramInt);
      System.arraycopy(this.a, 0, arrayOfInt, 0, this.a.length);
      this.a = arrayOfInt;
    }
  }

  private static int[] f(int paramInt)
  {
    return new int[(paramInt + 31) / 32];
  }

  public final int a()
  {
    return (this.b + 7) / 8;
  }

  public final void a(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int i = 0;
    while (i < paramInt2)
    {
      int j = 0;
      int m;
      for (int k = 0; j < 8; k = m)
      {
        m = k;
        if (a(paramInt1))
          m = k | 1 << 7 - j;
        paramInt1 += 1;
        j += 1;
      }
      paramArrayOfByte[(i + 0)] = ((byte)k);
      i += 1;
    }
  }

  public final void a(a parama)
  {
    int j = parama.b;
    e(this.b + j);
    int i = 0;
    while (i < j)
    {
      a(parama.a(i));
      i += 1;
    }
  }

  public final void a(boolean paramBoolean)
  {
    e(this.b + 1);
    if (paramBoolean)
    {
      int[] arrayOfInt = this.a;
      int i = this.b / 32;
      arrayOfInt[i] |= 1 << (this.b & 0x1F);
    }
    this.b += 1;
  }

  public final boolean a(int paramInt)
  {
    return (this.a[(paramInt / 32)] & 1 << (paramInt & 0x1F)) != 0;
  }

  public final boolean a(int paramInt1, int paramInt2)
  {
    if (paramInt2 < paramInt1)
      throw new IllegalArgumentException();
    if (paramInt2 == paramInt1)
      return true;
    int i1 = paramInt2 - 1;
    int n = paramInt1 / 32;
    int i2 = i1 / 32;
    int i = n;
    while (i <= i2)
    {
      if (i > n)
      {
        paramInt2 = 0;
        if (i >= i2)
          break label101;
      }
      label101: for (int j = 31; ; j = i1 & 0x1F)
      {
        if ((paramInt2 != 0) || (j != 31))
          break label111;
        m = -1;
        if ((m & this.a[i]) == 0)
          break label146;
        return false;
        paramInt2 = paramInt1 & 0x1F;
        break;
      }
      label111: int m = 0;
      int k = paramInt2;
      paramInt2 = m;
      while (true)
      {
        m = paramInt2;
        if (k > j)
          break;
        paramInt2 |= 1 << k;
        k += 1;
      }
      label146: i += 1;
    }
    return true;
  }

  public final void b()
  {
    int j = this.a.length;
    int i = 0;
    while (i < j)
    {
      this.a[i] = 0;
      i += 1;
    }
  }

  public final void b(int paramInt)
  {
    int[] arrayOfInt = this.a;
    int i = paramInt / 32;
    arrayOfInt[i] |= 1 << (paramInt & 0x1F);
  }

  public final void b(int paramInt1, int paramInt2)
  {
    if ((paramInt2 < 0) || (paramInt2 > 32))
      throw new IllegalArgumentException("Num bits must be between 0 and 32");
    e(this.b + paramInt2);
    if (paramInt2 > 0)
    {
      if ((paramInt1 >> paramInt2 - 1 & 0x1) == 1);
      for (boolean bool = true; ; bool = false)
      {
        a(bool);
        paramInt2 -= 1;
        break;
      }
    }
  }

  public final int c(int paramInt)
  {
    if (paramInt >= this.b)
      paramInt = this.b;
    int i;
    do
    {
      return paramInt;
      int j = paramInt / 32;
      i = this.a[j] & ((1 << (paramInt & 0x1F)) - 1 ^ 0xFFFFFFFF);
      paramInt = j;
      while (i == 0)
      {
        paramInt += 1;
        if (paramInt == this.a.length)
          return this.b;
        i = this.a[paramInt];
      }
      i = paramInt * 32 + Integer.numberOfTrailingZeros(i);
      paramInt = i;
    }
    while (i <= this.b);
    return this.b;
  }

  public final void c()
  {
    int k = 1;
    int[] arrayOfInt = new int[this.a.length];
    int j = (this.b - 1) / 32;
    int n = j + 1;
    int i = 0;
    while (i < n)
    {
      long l = this.a[i];
      l = (l & 0x55555555) << 1 | l >> 1 & 0x55555555;
      l = (l & 0x33333333) << 2 | l >> 2 & 0x33333333;
      l = (l & 0xF0F0F0F) << 4 | l >> 4 & 0xF0F0F0F;
      l = (l & 0xFF00FF) << 8 | l >> 8 & 0xFF00FF;
      arrayOfInt[(j - i)] = ((int)((l & 0xFFFF) << 16 | l >> 16 & 0xFFFF));
      i += 1;
    }
    if (this.b != n * 32)
    {
      int i1 = n * 32 - this.b;
      j = 0;
      i = 1;
      while (j < 31 - i1)
      {
        i = i << 1 | 0x1;
        j += 1;
      }
      int m = arrayOfInt[0] >> i1 & i;
      j = k;
      k = m;
      while (j < n)
      {
        m = arrayOfInt[j];
        arrayOfInt[(j - 1)] = (k | m << 32 - i1);
        k = m >> i1 & i;
        j += 1;
      }
      arrayOfInt[(n - 1)] = k;
    }
    this.a = arrayOfInt;
  }

  public final int d(int paramInt)
  {
    if (paramInt >= this.b)
      paramInt = this.b;
    int i;
    do
    {
      return paramInt;
      int j = paramInt / 32;
      i = (this.a[j] ^ 0xFFFFFFFF) & ((1 << (paramInt & 0x1F)) - 1 ^ 0xFFFFFFFF);
      paramInt = j;
      while (i == 0)
      {
        paramInt += 1;
        if (paramInt == this.a.length)
          return this.b;
        i = this.a[paramInt] ^ 0xFFFFFFFF;
      }
      i = paramInt * 32 + Integer.numberOfTrailingZeros(i);
      paramInt = i;
    }
    while (i <= this.b);
    return this.b;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a));
    do
    {
      return false;
      paramObject = (a)paramObject;
    }
    while ((this.b != paramObject.b) || (!Arrays.equals(this.a, paramObject.a)));
    return true;
  }

  public final int hashCode()
  {
    return this.b * 31 + Arrays.hashCode(this.a);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(this.b);
    int i = 0;
    if (i < this.b)
    {
      if ((i & 0x7) == 0)
        localStringBuilder.append(' ');
      if (a(i));
      for (char c = 'X'; ; c = '.')
      {
        localStringBuilder.append(c);
        i += 1;
        break;
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.a
 * JD-Core Version:    0.6.2
 */