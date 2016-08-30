package com.google.zxing.g.b;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.g;
import com.google.zxing.common.i;
import com.google.zxing.common.k;
import com.google.zxing.g.a.r;
import com.google.zxing.o;
import com.google.zxing.p;
import java.util.List;

public final class c
{
  public final com.google.zxing.common.b a;
  public p b;

  public c(com.google.zxing.common.b paramb)
  {
    this.a = paramb;
  }

  private float a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    float f2 = b(paramInt1, paramInt2, paramInt3, paramInt4);
    paramInt3 = paramInt1 - (paramInt3 - paramInt1);
    float f1;
    if (paramInt3 < 0)
    {
      f1 = paramInt1 / (paramInt1 - paramInt3);
      paramInt3 = 0;
    }
    while (true)
    {
      paramInt4 = (int)(paramInt2 - f1 * (paramInt4 - paramInt2));
      if (paramInt4 < 0)
      {
        f1 = paramInt2 / (paramInt2 - paramInt4);
        paramInt4 = i;
      }
      while (true)
      {
        float f3 = paramInt1;
        return b(paramInt1, paramInt2, (int)(f1 * (paramInt3 - paramInt1) + f3), paramInt4) + f2 - 1.0F;
        if (paramInt3 < this.a.a)
          break label192;
        f1 = (this.a.a - 1 - paramInt1) / (paramInt3 - paramInt1);
        paramInt3 = this.a.a - 1;
        break;
        if (paramInt4 >= this.a.b)
        {
          f1 = (this.a.b - 1 - paramInt2) / (paramInt4 - paramInt2);
          paramInt4 = this.a.b - 1;
        }
        else
        {
          f1 = 1.0F;
        }
      }
      label192: f1 = 1.0F;
    }
  }

  private float a(o paramo1, o paramo2)
  {
    float f1 = a((int)paramo1.a, (int)paramo1.b, (int)paramo2.a, (int)paramo2.b);
    float f2 = a((int)paramo2.a, (int)paramo2.b, (int)paramo1.a, (int)paramo1.b);
    if (Float.isNaN(f1))
      return f2 / 7.0F;
    if (Float.isNaN(f2))
      return f1 / 7.0F;
    return (f1 + f2) / 14.0F;
  }

  private float b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int k;
    int n;
    int m;
    int i;
    if (Math.abs(paramInt4 - paramInt2) > Math.abs(paramInt3 - paramInt1))
    {
      k = 1;
      if (k == 0)
        break label266;
      n = paramInt4;
      m = paramInt3;
      i = paramInt2;
      paramInt4 = paramInt1;
    }
    while (true)
    {
      int i5 = Math.abs(n - i);
      int i6 = Math.abs(m - paramInt4);
      int j = -i5 / 2;
      int i1;
      label74: int i2;
      if (i < n)
      {
        i1 = 1;
        if (paramInt4 >= m)
          break label168;
        i2 = 1;
        label84: paramInt3 = 0;
        paramInt2 = i;
        paramInt1 = paramInt4;
      }
      while (true)
      {
        if (paramInt2 == n + i1)
          break label263;
        int i3;
        label109: int i4;
        if (k != 0)
        {
          i3 = paramInt1;
          if (k == 0)
            break label180;
          i4 = paramInt2;
          label117: if (paramInt3 != 1)
            break label186;
        }
        label168: label180: label186: for (int i7 = 1; ; i7 = 0)
        {
          if (i7 != this.a.a(i3, i4))
            break label260;
          if (paramInt3 != 2)
            break label192;
          return com.google.zxing.common.a.a.a(paramInt2, paramInt1, i, paramInt4);
          k = 0;
          break;
          i1 = -1;
          break label74;
          i2 = -1;
          break label84;
          i3 = paramInt2;
          break label109;
          i4 = paramInt1;
          break label117;
        }
        label192: paramInt3 += 1;
        j += i6;
        if (j <= 0)
          break label257;
        if (paramInt1 == m)
          break label234;
        paramInt1 += i2;
        j -= i5;
        label226: paramInt2 += i1;
      }
      label257: label260: label263: 
      while (true)
      {
        label234: if (paramInt3 == 2)
          return com.google.zxing.common.a.a.a(n + i1, m, i, paramInt4);
        return (0.0F / 0.0F);
        break label226;
        break;
      }
      label266: m = paramInt4;
      paramInt4 = paramInt2;
      i = paramInt1;
      n = paramInt3;
    }
  }

  public final g a(h paramh)
    throws NotFoundException, FormatException
  {
    d locald1 = paramh.b;
    d locald2 = paramh.c;
    d locald3 = paramh.a;
    float f1 = (a(locald1, locald2) + a(locald1, locald3)) / 2.0F;
    if (f1 < 1.0F)
      throw NotFoundException.a();
    int j = (com.google.zxing.common.a.a.a(o.a(locald1, locald2) / f1) + com.google.zxing.common.a.a.a(o.a(locald1, locald3) / f1)) / 2 + 7;
    int i;
    float f2;
    float f3;
    float f4;
    float f5;
    int i4;
    int k;
    switch (j & 0x3)
    {
    case 1:
    default:
    case 0:
    case 2:
      while (true)
      {
        paramh = r.a(j);
        i = paramh.a();
        if (paramh.b.length <= 0)
          break label909;
        f2 = locald2.a;
        f3 = locald1.a;
        f4 = locald3.a;
        f5 = locald2.b;
        float f6 = locald1.b;
        float f7 = locald3.b;
        float f8 = 1.0F - 3.0F / (i - 7);
        float f9 = locald1.a;
        int i3 = (int)((f2 - f3 + f4 - locald1.a) * f8 + f9);
        i4 = (int)(locald1.b + f8 * (f5 - f6 + f7 - locald1.b));
        int m = 4;
        while (true)
        {
          if (m > 16)
            break label909;
          i1 = (int)(m * f1);
          try
          {
            i = Math.max(0, i3 - i1);
            k = Math.min(this.a.a - 1, i3 + i1);
            if (k - i >= 3.0F * f1)
              break;
            throw NotFoundException.a();
          }
          catch (NotFoundException paramh)
          {
            m <<= 1;
          }
        }
        j += 1;
        continue;
        j -= 1;
      }
    case 3:
    }
    throw NotFoundException.a();
    int n = Math.max(0, i4 - i1);
    int i1 = Math.min(this.a.b - 1, i1 + i4);
    if (i1 - n < 3.0F * f1)
      throw NotFoundException.a();
    Object localObject1 = new b(this.a, i, n, k - i, i1 - n, f1, this.b);
    int i2 = ((b)localObject1).c;
    int i5 = ((b)localObject1).f;
    int i6 = i2 + ((b)localObject1).e;
    int i7 = ((b)localObject1).d;
    int i8 = i5 / 2;
    Object localObject2 = new int[3];
    n = 0;
    while (true)
    {
      int i9;
      if (n < i5)
        if ((n & 0x1) == 0)
        {
          i = (n + 1) / 2;
          break label914;
          while ((k < i6) && (!((b)localObject1).a.a(k, i9)))
            k += 1;
        }
        else
        {
          i = -((n + 1) / 2);
        }
      while (true)
      {
        if (i1 < i6)
        {
          if (!((b)localObject1).a.a(i1, i9))
            break label986;
          k = i;
          if (i == 1)
            break label1002;
          if (i != 2)
            break label965;
          if (((b)localObject1).a((int[])localObject2))
          {
            paramh = ((b)localObject1).a((int[])localObject2, i9, i1);
            if (paramh == null);
          }
        }
        while (true)
        {
          f1 = j - 3.5F;
          if (paramh != null)
          {
            f4 = paramh.a;
            f5 = paramh.b;
            f2 = f1 - 3.0F;
            f3 = f2;
            label631: localObject1 = k.a(3.5F, 3.5F, f1, 3.5F, f2, f3, 3.5F, f1, locald1.a, locald1.b, locald2.a, locald2.b, f4, f5, locald3.a, locald3.b);
            localObject2 = this.a;
            localObject2 = i.a().a((com.google.zxing.common.b)localObject2, j, j, (k)localObject1);
            if (paramh != null)
              break label874;
            paramh = new o[3];
            paramh[0] = locald3;
            paramh[1] = locald1;
            paramh[2] = locald2;
          }
          while (true)
          {
            return new g((com.google.zxing.common.b)localObject2, paramh);
            localObject2[0] = localObject2[2];
            localObject2[1] = 1;
            localObject2[2] = 0;
            i = 1;
            break label956;
            if (!((b)localObject1).a((int[])localObject2))
              break label1021;
            paramh = ((b)localObject1).a((int[])localObject2, i9, i6);
            if (paramh == null)
              break label1021;
            break;
            if (!((b)localObject1).b.isEmpty())
            {
              paramh = (a)((b)localObject1).b.get(0);
              break;
            }
            throw NotFoundException.a();
            f4 = locald2.a - locald1.a + locald3.a;
            f5 = locald2.b - locald1.b + locald3.b;
            f2 = f1;
            f3 = f1;
            break label631;
            label874: localObject1 = new o[4];
            localObject1[0] = locald3;
            localObject1[1] = locald1;
            localObject1[2] = locald2;
            localObject1[3] = paramh;
            paramh = (h)localObject1;
          }
          label909: paramh = null;
        }
        label914: i9 = i7 + i8 + i;
        localObject2[0] = 0;
        localObject2[1] = 0;
        localObject2[2] = 0;
        k = i2;
        break;
        i = 0;
        i1 = k;
      }
      while (true)
      {
        label956: i1 += 1;
        break;
        label965: i += 1;
        localObject2[i] += 1;
        continue;
        label986: k = i;
        if (i == 1)
          k = i + 1;
        label1002: localObject2[k] += 1;
        i = k;
      }
      label1021: n += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.b.c
 * JD-Core Version:    0.6.2
 */