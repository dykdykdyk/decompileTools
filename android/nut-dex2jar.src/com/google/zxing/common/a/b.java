package com.google.zxing.common.a;

import com.google.zxing.NotFoundException;
import com.google.zxing.o;

public final class b
{
  private final com.google.zxing.common.b a;
  private final int b;
  private final int c;
  private final int d;
  private final int e;
  private final int f;
  private final int g;

  public b(com.google.zxing.common.b paramb)
    throws NotFoundException
  {
    this(paramb, 10, paramb.a / 2, paramb.b / 2);
  }

  public b(com.google.zxing.common.b paramb, int paramInt1, int paramInt2, int paramInt3)
    throws NotFoundException
  {
    this.a = paramb;
    this.b = paramb.b;
    this.c = paramb.a;
    paramInt1 /= 2;
    this.d = (paramInt2 - paramInt1);
    this.e = (paramInt2 + paramInt1);
    this.g = (paramInt3 - paramInt1);
    this.f = (paramInt1 + paramInt3);
    if ((this.g < 0) || (this.d < 0) || (this.f >= this.b) || (this.e >= this.c))
      throw NotFoundException.a();
  }

  private o a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int j = a.a(a.a(paramFloat1, paramFloat2, paramFloat3, paramFloat4));
    paramFloat3 = (paramFloat3 - paramFloat1) / j;
    paramFloat4 = (paramFloat4 - paramFloat2) / j;
    int i = 0;
    while (i < j)
    {
      int k = a.a(i * paramFloat3 + paramFloat1);
      int m = a.a(i * paramFloat4 + paramFloat2);
      if (this.a.a(k, m))
        return new o(k, m);
      i += 1;
    }
    return null;
  }

  private boolean a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = paramInt1;
    if (paramBoolean)
      while (paramInt1 <= paramInt2)
      {
        if (this.a.a(paramInt1, paramInt3))
          return true;
        paramInt1 += 1;
      }
    do
    {
      i += 1;
      if (i > paramInt2)
        break;
    }
    while (!this.a.a(paramInt3, i));
    return true;
    return false;
  }

  public final o[] a()
    throws NotFoundException
  {
    int m = this.d;
    int i = this.e;
    int j = this.g;
    int k = this.f;
    int i6 = 0;
    int i4 = 0;
    int n = 0;
    int i2 = 0;
    int i1 = 0;
    int i5 = 0;
    int i3 = 1;
    int i7;
    boolean bool;
    if (i3 != 0)
    {
      i7 = 1;
      i3 = 0;
      while (((i7 != 0) || (n == 0)) && (i < this.c))
      {
        bool = a(j, k, i, false);
        if (bool)
        {
          i3 = 1;
          i += 1;
          n = 1;
          i7 = bool;
        }
        else
        {
          i7 = bool;
          if (n == 0)
          {
            i += 1;
            i7 = bool;
          }
        }
      }
      if (i >= this.c)
      {
        i2 = 1;
        n = i;
        i = m;
        i1 = j;
        m = n;
        j = k;
        k = i;
        i = i1;
        n = i2;
      }
    }
    while (true)
    {
      if ((n == 0) && (i4 != 0))
      {
        i1 = m - k;
        o localo1 = null;
        n = 1;
        o localo2;
        while (true)
        {
          localo2 = localo1;
          if (n >= i1)
            break;
          localo1 = a(k, j - n, k + n, j);
          localo2 = localo1;
          if (localo1 != null)
            break;
          n += 1;
        }
        i7 = 1;
        while (((i7 != 0) || (i2 == 0)) && (k < this.b))
        {
          bool = a(m, i, k, true);
          if (bool)
          {
            i3 = 1;
            k += 1;
            i2 = 1;
            i7 = bool;
          }
          else
          {
            i7 = bool;
            if (i2 == 0)
            {
              k += 1;
              i7 = bool;
            }
          }
        }
        if (k >= this.b)
        {
          n = 1;
          i1 = i;
          i2 = k;
          i = j;
          k = m;
          j = i2;
          m = i1;
          continue;
        }
        i7 = 1;
        while (((i7 != 0) || (i1 == 0)) && (m >= 0))
        {
          bool = a(j, k, m, false);
          if (bool)
          {
            i3 = 1;
            m -= 1;
            i1 = 1;
            i7 = bool;
          }
          else
          {
            i7 = bool;
            if (i1 == 0)
            {
              m -= 1;
              i7 = bool;
            }
          }
        }
        if (m < 0)
        {
          n = 1;
          i1 = i;
          i2 = k;
          i = j;
          k = m;
          j = i2;
          m = i1;
          continue;
        }
        i7 = 1;
        while (((i7 != 0) || (i5 == 0)) && (j >= 0))
        {
          bool = a(m, i, j, true);
          if (bool)
          {
            j -= 1;
            i3 = 1;
            i5 = 1;
            i7 = bool;
          }
          else
          {
            i7 = bool;
            if (i5 == 0)
            {
              j -= 1;
              i7 = bool;
            }
          }
        }
        if (j < 0)
        {
          n = 1;
          i1 = i;
          i2 = k;
          i = j;
          k = m;
          j = i2;
          m = i1;
          continue;
        }
        if (i3 != 0)
          i4 = 1;
        break;
        if (localo2 == null)
          throw NotFoundException.a();
        localo1 = null;
        n = 1;
        o localo3;
        while (true)
        {
          localo3 = localo1;
          if (n >= i1)
            break;
          localo1 = a(k, i + n, k + n, i);
          localo3 = localo1;
          if (localo1 != null)
            break;
          n += 1;
        }
        if (localo3 == null)
          throw NotFoundException.a();
        localo1 = null;
        k = 1;
        o localo4;
        while (true)
        {
          localo4 = localo1;
          if (k >= i1)
            break;
          localo1 = a(m, i + k, m - k, i);
          localo4 = localo1;
          if (localo1 != null)
            break;
          k += 1;
        }
        if (localo4 == null)
          throw NotFoundException.a();
        localo1 = null;
        i = 1;
        o localo5;
        while (true)
        {
          localo5 = localo1;
          if (i >= i1)
            break;
          localo1 = a(m, j - i, m - i, j);
          localo5 = localo1;
          if (localo1 != null)
            break;
          i += 1;
        }
        if (localo5 == null)
          throw NotFoundException.a();
        float f1 = localo5.a;
        float f2 = localo5.b;
        float f3 = localo2.a;
        float f4 = localo2.b;
        float f5 = localo4.a;
        float f6 = localo4.b;
        float f7 = localo3.a;
        float f8 = localo3.b;
        if (f1 < this.c / 2.0F)
          return new o[] { new o(f7 - 1.0F, f8 + 1.0F), new o(f3 + 1.0F, f4 + 1.0F), new o(f5 - 1.0F, f6 - 1.0F), new o(f1 + 1.0F, f2 - 1.0F) };
        return new o[] { new o(f7 + 1.0F, f8 + 1.0F), new o(f3 + 1.0F, f4 - 1.0F), new o(f5 - 1.0F, f6 + 1.0F), new o(f1 - 1.0F, f2 - 1.0F) };
      }
      throw NotFoundException.a();
      i1 = i;
      i2 = k;
      i = j;
      n = i6;
      k = m;
      j = i2;
      m = i1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.a.b
 * JD-Core Version:    0.6.2
 */