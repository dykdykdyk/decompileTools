package com.google.zxing.g.b;

import com.google.zxing.o;
import com.google.zxing.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class b
{
  final com.google.zxing.common.b a;
  final List<a> b;
  final int c;
  final int d;
  final int e;
  final int f;
  private final float g;
  private final int[] h;
  private final p i;

  b(com.google.zxing.common.b paramb, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat, p paramp)
  {
    this.a = paramb;
    this.b = new ArrayList(5);
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
    this.f = paramInt4;
    this.g = paramFloat;
    this.h = new int[3];
    this.i = paramp;
  }

  private static float a(int[] paramArrayOfInt, int paramInt)
  {
    return paramInt - paramArrayOfInt[2] - paramArrayOfInt[1] / 2.0F;
  }

  final a a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int j = paramArrayOfInt[0];
    int k = paramArrayOfInt[1];
    j = paramArrayOfInt[2] + (j + k);
    float f2 = a(paramArrayOfInt, paramInt2);
    k = (int)f2;
    int m = paramArrayOfInt[1] * 2;
    Object localObject = this.a;
    int n = ((com.google.zxing.common.b)localObject).b;
    int[] arrayOfInt = this.h;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    paramInt2 = paramInt1;
    while ((paramInt2 >= 0) && (((com.google.zxing.common.b)localObject).a(k, paramInt2)) && (arrayOfInt[1] <= m))
    {
      arrayOfInt[1] += 1;
      paramInt2 -= 1;
    }
    float f1;
    float f3;
    if ((paramInt2 < 0) || (arrayOfInt[1] > m))
    {
      f1 = (0.0F / 0.0F);
      if (!Float.isNaN(f1))
      {
        f3 = (paramArrayOfInt[0] + paramArrayOfInt[1] + paramArrayOfInt[2]) / 3.0F;
        paramArrayOfInt = this.b.iterator();
      }
    }
    else
    {
      label554: 
      while (true)
      {
        if (!paramArrayOfInt.hasNext())
          break label556;
        localObject = (a)paramArrayOfInt.next();
        if ((Math.abs(f1 - ((o)localObject).b) <= f3) && (Math.abs(f2 - ((o)localObject).a) <= f3))
        {
          float f4 = Math.abs(f3 - ((a)localObject).c);
          if ((f4 <= 1.0F) || (f4 <= ((a)localObject).c))
            paramInt1 = 1;
        }
        while (true)
        {
          if (paramInt1 == 0)
            break label554;
          return new a((((o)localObject).a + f2) / 2.0F, (f1 + ((o)localObject).b) / 2.0F, (((a)localObject).c + f3) / 2.0F);
          while ((paramInt2 >= 0) && (!((com.google.zxing.common.b)localObject).a(k, paramInt2)) && (arrayOfInt[0] <= m))
          {
            arrayOfInt[0] += 1;
            paramInt2 -= 1;
          }
          if (arrayOfInt[0] > m)
          {
            f1 = (0.0F / 0.0F);
            break;
          }
          paramInt1 += 1;
          while ((paramInt1 < n) && (((com.google.zxing.common.b)localObject).a(k, paramInt1)) && (arrayOfInt[1] <= m))
          {
            arrayOfInt[1] += 1;
            paramInt1 += 1;
          }
          if ((paramInt1 == n) || (arrayOfInt[1] > m))
          {
            f1 = (0.0F / 0.0F);
            break;
          }
          while ((paramInt1 < n) && (!((com.google.zxing.common.b)localObject).a(k, paramInt1)) && (arrayOfInt[2] <= m))
          {
            arrayOfInt[2] += 1;
            paramInt1 += 1;
          }
          if (arrayOfInt[2] > m)
          {
            f1 = (0.0F / 0.0F);
            break;
          }
          if (Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] - j) * 5 >= j * 2)
          {
            f1 = (0.0F / 0.0F);
            break;
          }
          if (a(arrayOfInt))
          {
            f1 = a(arrayOfInt, paramInt1);
            break;
          }
          f1 = (0.0F / 0.0F);
          break;
          paramInt1 = 0;
          continue;
          paramInt1 = 0;
        }
      }
      label556: paramArrayOfInt = new a(f2, f1, f3);
      this.b.add(paramArrayOfInt);
    }
    return null;
  }

  final boolean a(int[] paramArrayOfInt)
  {
    float f1 = this.g;
    float f2 = f1 / 2.0F;
    int j = 0;
    while (j < 3)
    {
      if (Math.abs(f1 - paramArrayOfInt[j]) >= f2)
        return false;
      j += 1;
    }
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.b.b
 * JD-Core Version:    0.6.2
 */