package com.google.zxing.a.b;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.i;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.google.zxing.common.reedsolomon.c;
import com.google.zxing.o;

public final class a
{
  private static final int[] g = { 3808, 476, 2107, 1799 };
  private final com.google.zxing.common.b a;
  private boolean b;
  private int c;
  private int d;
  private int e;
  private int f;

  public a(com.google.zxing.common.b paramb)
  {
    this.a = paramb;
  }

  private static int a(long paramLong, boolean paramBoolean)
    throws NotFoundException
  {
    int m = 0;
    int j;
    if (paramBoolean)
      j = 7;
    int[] arrayOfInt;
    int k;
    for (int i = 2; ; i = 4)
    {
      arrayOfInt = new int[j];
      k = j - 1;
      while (k >= 0)
      {
        arrayOfInt[k] = ((int)paramLong & 0xF);
        paramLong >>= 4;
        k -= 1;
      }
      j = 10;
    }
    try
    {
      new c(com.google.zxing.common.reedsolomon.a.d).a(arrayOfInt, j - i);
      k = 0;
      j = m;
      while (j < i)
      {
        k = (k << 4) + arrayOfInt[j];
        j += 1;
      }
    }
    catch (ReedSolomonException localReedSolomonException)
    {
      throw NotFoundException.a();
    }
    return k;
  }

  private int a(b paramb1, b paramb2)
  {
    float f3 = b(paramb1, paramb2);
    float f4 = (paramb2.a - paramb1.a) / f3;
    float f5 = (paramb2.b - paramb1.b) / f3;
    float f1 = paramb1.a;
    float f2 = paramb1.b;
    boolean bool2 = this.a.a(paramb1.a, paramb1.b);
    int j = 0;
    int i = 0;
    while (i < f3)
    {
      f1 += f4;
      f2 += f5;
      int k = j;
      if (this.a.a(com.google.zxing.common.a.a.a(f1), com.google.zxing.common.a.a.a(f2)) != bool2)
        k = j + 1;
      i += 1;
      j = k;
    }
    f1 = j / f3;
    if ((f1 > 0.1F) && (f1 < 0.9F))
      return 0;
    if (f1 <= 0.1F);
    for (boolean bool1 = true; bool1 == bool2; bool1 = false)
      return 1;
    return -1;
  }

  private int a(o paramo1, o paramo2, int paramInt)
  {
    int j = 0;
    float f4 = com.google.zxing.common.a.a.a(paramo1.a, paramo1.b, paramo2.a, paramo2.b);
    float f5 = f4 / paramInt;
    float f1 = paramo1.a;
    float f2 = paramo1.b;
    float f3 = (paramo2.a - paramo1.a) * f5 / f4;
    f4 = f5 * (paramo2.b - paramo1.b) / f4;
    int i = 0;
    while (i < paramInt)
    {
      int k = j;
      if (this.a.a(com.google.zxing.common.a.a.a(i * f3 + f1), com.google.zxing.common.a.a.a(i * f4 + f2)))
        k = j | 1 << paramInt - i - 1;
      i += 1;
      j = k;
    }
    return j;
  }

  private b a()
  {
    try
    {
      localObject = new com.google.zxing.common.a.b(this.a).a();
      localo5 = localObject[0];
      localo4 = localObject[1];
      localo3 = localObject[2];
      localObject = localObject[3];
      i = com.google.zxing.common.a.a.a((localo5.a + ((o)localObject).a + localo4.a + localo3.a) / 4.0F);
      f1 = localo5.b;
      j = com.google.zxing.common.a.a.a((((o)localObject).b + f1 + localo4.b + localo3.b) / 4.0F);
    }
    catch (NotFoundException localNotFoundException1)
    {
      try
      {
        Object localObject = new com.google.zxing.common.a.b(this.a, 15, i, j).a();
        localo5 = localObject[0];
        localo4 = localObject[1];
        localo3 = localObject[2];
        localObject = localObject[3];
        i = com.google.zxing.common.a.a.a((localo5.a + ((o)localObject).a + localo4.a + localo3.a) / 4.0F);
        float f1 = localo5.b;
        return new b(i, com.google.zxing.common.a.a.a((((o)localObject).b + f1 + localo4.b + localo3.b) / 4.0F));
        localNotFoundException1 = localNotFoundException1;
        i = this.a.a / 2;
        j = this.a.b / 2;
        localo5 = a(new b(i + 7, j - 7), false, 1, -1).a();
        localo4 = a(new b(i + 7, j + 7), false, 1, 1).a();
        localo3 = a(new b(i - 7, j + 7), false, -1, 1).a();
        o localo1 = a(new b(i - 7, j - 7), false, -1, -1).a();
      }
      catch (NotFoundException localNotFoundException2)
      {
        while (true)
        {
          int i;
          int j;
          o localo5 = a(new b(i + 7, j - 7), false, 1, -1).a();
          o localo4 = a(new b(i + 7, j + 7), false, 1, 1).a();
          o localo3 = a(new b(i - 7, j + 7), false, -1, 1).a();
          o localo2 = a(new b(i - 7, j - 7), false, -1, -1).a();
        }
      }
    }
  }

  private b a(b paramb, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    int j = paramb.a + paramInt1;
    int i = paramb.b + paramInt2;
    while ((a(j, i)) && (this.a.a(j, i) == paramBoolean))
    {
      j += paramInt1;
      i += paramInt2;
    }
    int k = j - paramInt1;
    j = i - paramInt2;
    i = k;
    while ((a(i, j)) && (this.a.a(i, j) == paramBoolean))
      i += paramInt1;
    i -= paramInt1;
    paramInt1 = j;
    while ((a(i, paramInt1)) && (this.a.a(i, paramInt1) == paramBoolean))
      paramInt1 += paramInt2;
    return new b(i, paramInt1 - paramInt2);
  }

  private boolean a(int paramInt1, int paramInt2)
  {
    return (paramInt1 >= 0) && (paramInt1 < this.a.a) && (paramInt2 > 0) && (paramInt2 < this.a.b);
  }

  private boolean a(o paramo)
  {
    return a(com.google.zxing.common.a.a.a(paramo.a), com.google.zxing.common.a.a.a(paramo.b));
  }

  private static o[] a(o[] paramArrayOfo, float paramFloat1, float paramFloat2)
  {
    paramFloat1 = paramFloat2 / (2.0F * paramFloat1);
    paramFloat2 = paramArrayOfo[0].a - paramArrayOfo[2].a;
    float f1 = paramArrayOfo[0].b - paramArrayOfo[2].b;
    float f2 = (paramArrayOfo[0].a + paramArrayOfo[2].a) / 2.0F;
    float f3 = (paramArrayOfo[0].b + paramArrayOfo[2].b) / 2.0F;
    o localo1 = new o(paramFloat1 * paramFloat2 + f2, paramFloat1 * f1 + f3);
    o localo2 = new o(f2 - paramFloat2 * paramFloat1, f3 - f1 * paramFloat1);
    paramFloat2 = paramArrayOfo[1].a - paramArrayOfo[3].a;
    f1 = paramArrayOfo[1].b - paramArrayOfo[3].b;
    f2 = (paramArrayOfo[1].a + paramArrayOfo[3].a) / 2.0F;
    f3 = (paramArrayOfo[1].b + paramArrayOfo[3].b) / 2.0F;
    return new o[] { localo1, new o(paramFloat1 * paramFloat2 + f2, paramFloat1 * f1 + f3), localo2, new o(f2 - paramFloat2 * paramFloat1, f3 - paramFloat1 * f1) };
  }

  private static float b(b paramb1, b paramb2)
  {
    return com.google.zxing.common.a.a.a(paramb1.a, paramb1.b, paramb2.a, paramb2.b);
  }

  private int b()
  {
    if (this.b)
      return this.c * 4 + 11;
    if (this.c <= 4)
      return this.c * 4 + 15;
    return this.c * 4 + ((this.c - 4) / 8 + 1) * 2 + 15;
  }

  public final com.google.zxing.a.a a(boolean paramBoolean)
    throws NotFoundException
  {
    Object localObject1 = a();
    this.e = 1;
    Object localObject2 = localObject1;
    boolean bool = true;
    Object localObject3 = localObject1;
    Object localObject4 = localObject1;
    b localb2;
    Object localObject5;
    b localb1;
    float f1;
    if (this.e < 9)
    {
      localb2 = a((b)localObject4, bool, 1, -1);
      localObject5 = a((b)localObject3, bool, 1, 1);
      b localb3 = a((b)localObject2, bool, -1, 1);
      localb1 = a((b)localObject1, bool, -1, -1);
      if (this.e > 2)
      {
        f1 = b(localb1, localb2) * this.e / (b((b)localObject1, (b)localObject4) * (this.e + 2));
        if ((f1 < 0.75D) || (f1 > 1.25D))
          break label342;
        b localb4 = new b(localb2.a - 3, localb2.b + 3);
        b localb5 = new b(((b)localObject5).a - 3, ((b)localObject5).b - 3);
        b localb6 = new b(localb3.a + 3, localb3.b - 3);
        b localb7 = new b(localb1.a + 3, localb1.b + 3);
        i = a(localb7, localb4);
        if ((i != 0) && (a(localb4, localb5) == i) && (a(localb5, localb6) == i) && (a(localb6, localb7) == i))
        {
          i = 1;
          label288: if (i == 0)
            break label342;
        }
      }
      else
      {
        if (bool)
          break label336;
      }
      label336: for (bool = true; ; bool = false)
      {
        this.e += 1;
        localObject2 = localb3;
        localObject3 = localObject5;
        localObject4 = localb2;
        localObject1 = localb1;
        break;
        i = 0;
        break label288;
      }
    }
    label342: if ((this.e != 5) && (this.e != 7))
      throw NotFoundException.a();
    if (this.e == 5);
    float f2;
    for (bool = true; ; bool = false)
    {
      this.b = bool;
      localObject4 = new o(((b)localObject4).a + 0.5F, ((b)localObject4).b - 0.5F);
      localObject3 = new o(((b)localObject3).a + 0.5F, ((b)localObject3).b + 0.5F);
      localObject2 = new o(((b)localObject2).a - 0.5F, ((b)localObject2).b + 0.5F);
      localObject1 = new o(((b)localObject1).a - 0.5F, ((b)localObject1).b - 0.5F);
      f1 = this.e * 2 - 3;
      f2 = this.e * 2;
      localObject1 = a(new o[] { localObject4, localObject3, localObject2, localObject1 }, f1, f2);
      if (paramBoolean)
      {
        localObject2 = localObject1[0];
        localObject1[0] = localObject1[2];
        localObject1[2] = localObject2;
      }
      if ((a(localObject1[0])) && (a(localObject1[1])) && (a(localObject1[2])) && (a(localObject1[3])))
        break;
      throw NotFoundException.a();
    }
    int k = this.e * 2;
    localObject2 = new int[4];
    localObject2[0] = a(localObject1[0], localObject1[1], k);
    localObject2[1] = a(localObject1[1], localObject1[2], k);
    localObject2[2] = a(localObject1[2], localObject1[3], k);
    localObject2[3] = a(localObject1[3], localObject1[0], k);
    int i = 0;
    int j = 0;
    while (j < 4)
    {
      int m = localObject2[j];
      i = (i << 3) + ((m & 0x1) + (m >> k - 2 << 1));
      j += 1;
    }
    j = 0;
    if (j < 4)
      if (Integer.bitCount(g[j] ^ (i >> 1) + ((i & 0x1) << 11)) <= 2)
      {
        this.f = j;
        l = 0L;
        i = 0;
        label796: if (i >= 4)
          break label889;
        j = localObject2[((this.f + i) % 4)];
        if (!this.b)
          break label861;
      }
    label861: for (long l = (l << 7) + (j >> 1 & 0x7F); ; l = (l << 10) + ((j >> 1 & 0x1F) + (j >> 2 & 0x3E0)))
    {
      i += 1;
      break label796;
      j += 1;
      break;
      throw NotFoundException.a();
    }
    label889: i = a(l, this.b);
    if (this.b)
      this.c = ((i >> 6) + 1);
    for (this.d = ((i & 0x3F) + 1); ; this.d = ((i & 0x7FF) + 1))
    {
      localObject2 = this.a;
      localObject3 = localObject1[(this.f % 4)];
      localObject4 = localObject1[((this.f + 1) % 4)];
      localb1 = localObject1[((this.f + 2) % 4)];
      localb2 = localObject1[((this.f + 3) % 4)];
      localObject5 = i.a();
      i = b();
      f1 = i / 2.0F - this.e;
      f2 = i / 2.0F + this.e;
      return new com.google.zxing.a.a(((i)localObject5).a((com.google.zxing.common.b)localObject2, i, i, f1, f1, f2, f1, f2, f2, f1, f2, ((o)localObject3).a, ((o)localObject3).b, ((o)localObject4).a, ((o)localObject4).b, localb1.a, localb1.b, localb2.a, localb2.b), a((o[])localObject1, this.e * 2, b()), this.b, this.d, this.c);
      this.c = ((i >> 11) + 1);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.a.b.a
 * JD-Core Version:    0.6.2
 */