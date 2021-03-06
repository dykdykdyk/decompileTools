package com.google.zxing.common.reedsolomon;

final class b
{
  final int[] a;
  private final a b;

  b(a parama, int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length == 0)
      throw new IllegalArgumentException();
    this.b = parama;
    int j = paramArrayOfInt.length;
    if ((j > 1) && (paramArrayOfInt[0] == 0))
    {
      int i = 1;
      while ((i < j) && (paramArrayOfInt[i] == 0))
        i += 1;
      if (i == j)
      {
        this.a = new int[] { 0 };
        return;
      }
      this.a = new int[j - i];
      System.arraycopy(paramArrayOfInt, i, this.a, 0, this.a.length);
      return;
    }
    this.a = paramArrayOfInt;
  }

  final int a(int paramInt)
  {
    return this.a[(this.a.length - 1 - paramInt)];
  }

  final b a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    if (paramInt2 == 0)
      return this.b.j;
    int i = this.a.length;
    int[] arrayOfInt = new int[i + paramInt1];
    paramInt1 = 0;
    while (paramInt1 < i)
    {
      arrayOfInt[paramInt1] = this.b.c(this.a[paramInt1], paramInt2);
      paramInt1 += 1;
    }
    return new b(this.b, arrayOfInt);
  }

  final b a(b paramb)
  {
    if (!this.b.equals(paramb.b))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if (a())
      return paramb;
    if (paramb.a())
      return this;
    Object localObject1 = this.a;
    paramb = paramb.a;
    if (localObject1.length > paramb.length);
    while (true)
    {
      Object localObject2 = new int[localObject1.length];
      int j = localObject1.length - paramb.length;
      System.arraycopy(localObject1, 0, localObject2, 0, j);
      int i = j;
      while (i < localObject1.length)
      {
        localObject2[i] = a.b(paramb[(i - j)], localObject1[i]);
        i += 1;
      }
      return new b(this.b, (int[])localObject2);
      localObject2 = paramb;
      paramb = (b)localObject1;
      localObject1 = localObject2;
    }
  }

  final boolean a()
  {
    boolean bool = false;
    if (this.a[0] == 0)
      bool = true;
    return bool;
  }

  final int b(int paramInt)
  {
    int j = 0;
    int i;
    if (paramInt == 0)
    {
      i = a(0);
      return i;
    }
    int m = this.a.length;
    if (paramInt == 1)
    {
      int[] arrayOfInt = this.a;
      k = arrayOfInt.length;
      paramInt = 0;
      while (true)
      {
        i = paramInt;
        if (j >= k)
          break;
        paramInt = a.b(paramInt, arrayOfInt[j]);
        j += 1;
      }
    }
    j = this.a[0];
    int k = 1;
    while (true)
    {
      i = j;
      if (k >= m)
        break;
      j = a.b(this.b.c(paramInt, j), this.a[k]);
      k += 1;
    }
  }

  final b b(b paramb)
  {
    if (!this.b.equals(paramb.b))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if ((a()) || (paramb.a()))
      return this.b.j;
    int[] arrayOfInt1 = this.a;
    int k = arrayOfInt1.length;
    paramb = paramb.a;
    int m = paramb.length;
    int[] arrayOfInt2 = new int[k + m - 1];
    int i = 0;
    while (i < k)
    {
      int n = arrayOfInt1[i];
      int j = 0;
      while (j < m)
      {
        arrayOfInt2[(i + j)] = a.b(arrayOfInt2[(i + j)], this.b.c(n, paramb[j]));
        j += 1;
      }
      i += 1;
    }
    return new b(this.b, arrayOfInt2);
  }

  final b c(int paramInt)
  {
    if (paramInt == 0)
      localObject = this.b.j;
    do
    {
      return localObject;
      localObject = this;
    }
    while (paramInt == 1);
    int j = this.a.length;
    Object localObject = new int[j];
    int i = 0;
    while (i < j)
    {
      localObject[i] = this.b.c(this.a[i], paramInt);
      i += 1;
    }
    return new b(this.b, (int[])localObject);
  }

  final b[] c(b paramb)
  {
    if (!this.b.equals(paramb.b))
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    if (paramb.a())
      throw new IllegalArgumentException("Divide by 0");
    b localb2 = this.b.j;
    int i = paramb.a(paramb.a.length - 1);
    i = this.b.b(i);
    b localb3;
    for (b localb1 = this; (localb1.a.length - 1 >= paramb.a.length - 1) && (!localb1.a()); localb1 = localb1.a(localb3))
    {
      int j = localb1.a.length - 1 - (paramb.a.length - 1);
      int k = this.b.c(localb1.a(localb1.a.length - 1), i);
      localb3 = paramb.a(j, k);
      localb2 = localb2.a(this.b.a(j, k));
    }
    return new b[] { localb2, localb1 };
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder((this.a.length - 1) * 8);
    int i = this.a.length - 1;
    if (i >= 0)
    {
      int k = a(i);
      int j;
      if (k != 0)
      {
        if (k >= 0)
          break label110;
        localStringBuilder.append(" - ");
        j = -k;
        label56: if ((i == 0) || (j != 1))
        {
          j = this.b.a(j);
          if (j != 0)
            break label133;
          localStringBuilder.append('1');
        }
        label86: if (i != 0)
        {
          if (i != 1)
            break label167;
          localStringBuilder.append('x');
        }
      }
      while (true)
      {
        i -= 1;
        break;
        label110: j = k;
        if (localStringBuilder.length() <= 0)
          break label56;
        localStringBuilder.append(" + ");
        j = k;
        break label56;
        label133: if (j == 1)
        {
          localStringBuilder.append('a');
          break label86;
        }
        localStringBuilder.append("a^");
        localStringBuilder.append(j);
        break label86;
        label167: localStringBuilder.append("x^");
        localStringBuilder.append(i);
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.b
 * JD-Core Version:    0.6.2
 */