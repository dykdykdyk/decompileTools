package com.google.zxing.common;

import java.util.Arrays;

public final class b
  implements Cloneable
{
  public final int a;
  public final int b;
  public final int c;
  public final int[] d;

  public b(int paramInt)
  {
    this(paramInt, paramInt);
  }

  public b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0))
      throw new IllegalArgumentException("Both dimensions must be greater than 0");
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = ((paramInt1 + 31) / 32);
    this.d = new int[this.c * paramInt2];
  }

  private b(int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = paramArrayOfInt;
  }

  public final a a(int paramInt, a parama)
  {
    if ((parama == null) || (parama.b < this.a))
      parama = new a(this.a);
    while (true)
    {
      int j = this.c;
      int i = 0;
      while (i < this.c)
      {
        int k = this.d[(paramInt * j + i)];
        parama.a[(i * 32 / 32)] = k;
        i += 1;
      }
      parama.b();
    }
    return parama;
  }

  public final void a()
  {
    int j = this.d.length;
    int i = 0;
    while (i < j)
    {
      this.d[i] = 0;
      i += 1;
    }
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 < 0) || (paramInt1 < 0))
      throw new IllegalArgumentException("Left and top must be nonnegative");
    if ((paramInt4 <= 0) || (paramInt3 <= 0))
      throw new IllegalArgumentException("Height and width must be at least 1");
    int i = paramInt1 + paramInt3;
    paramInt4 = paramInt2 + paramInt4;
    if ((paramInt4 > this.b) || (i > this.a))
      throw new IllegalArgumentException("The region must fit inside the matrix");
    while (true)
    {
      paramInt2 += 1;
      if (paramInt2 >= paramInt4)
        break;
      int j = this.c;
      paramInt3 = paramInt1;
      while (paramInt3 < i)
      {
        int[] arrayOfInt = this.d;
        int k = paramInt3 / 32 + paramInt2 * j;
        arrayOfInt[k] |= 1 << (paramInt3 & 0x1F);
        paramInt3 += 1;
      }
    }
  }

  public final boolean a(int paramInt1, int paramInt2)
  {
    int i = this.c;
    int j = paramInt1 / 32;
    return (this.d[(i * paramInt2 + j)] >>> (paramInt1 & 0x1F) & 0x1) != 0;
  }

  public final void b(int paramInt1, int paramInt2)
  {
    paramInt2 = this.c * paramInt2 + paramInt1 / 32;
    int[] arrayOfInt = this.d;
    arrayOfInt[paramInt2] |= 1 << (paramInt1 & 0x1F);
  }

  public final void b(int paramInt, a parama)
  {
    System.arraycopy(parama.a, 0, this.d, this.c * paramInt, this.c);
  }

  public final int[] b()
  {
    int i = 0;
    while ((i < this.d.length) && (this.d[i] == 0))
      i += 1;
    if (i == this.d.length)
      return null;
    int k = i / this.c;
    int m = this.c;
    int n = this.d[i];
    int j = 0;
    while (n << 31 - j == 0)
      j += 1;
    return new int[] { i % m * 32 + j, k };
  }

  public final void c(int paramInt1, int paramInt2)
  {
    paramInt2 = this.c * paramInt2 + paramInt1 / 32;
    int[] arrayOfInt = this.d;
    arrayOfInt[paramInt2] ^= 1 << (paramInt1 & 0x1F);
  }

  public final int[] c()
  {
    int i = this.d.length - 1;
    while ((i >= 0) && (this.d[i] == 0))
      i -= 1;
    if (i < 0)
      return null;
    int k = i / this.c;
    int m = this.c;
    int n = this.d[i];
    int j = 31;
    while (n >>> j == 0)
      j -= 1;
    return new int[] { i % m * 32 + j, k };
  }

  public final b d()
  {
    return new b(this.a, this.b, this.c, (int[])this.d.clone());
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b));
    do
    {
      return false;
      paramObject = (b)paramObject;
    }
    while ((this.a != paramObject.a) || (this.b != paramObject.b) || (this.c != paramObject.c) || (!Arrays.equals(this.d, paramObject.d)));
    return true;
  }

  public final int hashCode()
  {
    return (((this.a * 31 + this.a) * 31 + this.b) * 31 + this.c) * 31 + Arrays.hashCode(this.d);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(this.b * (this.a + 1));
    int i = 0;
    while (i < this.b)
    {
      int j = 0;
      if (j < this.a)
      {
        if (a(j, i));
        for (String str = "X "; ; str = "  ")
        {
          localStringBuilder.append(str);
          j += 1;
          break;
        }
      }
      localStringBuilder.append("\n");
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.b
 * JD-Core Version:    0.6.2
 */