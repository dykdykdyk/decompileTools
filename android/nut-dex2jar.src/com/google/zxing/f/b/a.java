package com.google.zxing.f.b;

import com.google.zxing.NotFoundException;
import com.google.zxing.c;
import com.google.zxing.o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class a
{
  private static final int[] a = { 0, 4, 1, 5 };
  private static final int[] b = { 6, 2, 7, 3 };
  private static final int[] c = { 8, 1, 1, 1, 1, 1, 1, 3 };
  private static final int[] d = { 7, 1, 1, 3, 1, 1, 1, 2, 1 };

  private static float a(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int m = paramArrayOfInt1.length;
    int k = 0;
    int i = 0;
    int j = 0;
    while (k < m)
    {
      int n = paramArrayOfInt1[k];
      int i1 = paramArrayOfInt2[k];
      k += 1;
      j = i1 + j;
      i = n + i;
    }
    if (i < j);
    float f1;
    label145: 
    while (true)
    {
      return (1.0F / 1.0F);
      float f3 = i / j;
      f1 = 0.0F;
      j = 0;
      if (j >= m)
        break;
      k = paramArrayOfInt1[j];
      float f2 = paramArrayOfInt2[j] * f3;
      if (k > f2);
      for (f2 = k - f2; ; f2 -= k)
      {
        if (f2 > 0.8F * f3)
          break label145;
        f1 += f2;
        j += 1;
        break;
      }
    }
    return f1 / i;
  }

  public static b a(c paramc)
    throws NotFoundException
  {
    com.google.zxing.common.b localb = paramc.a();
    List localList = a(localb);
    Object localObject = localList;
    paramc = localb;
    if (localList.isEmpty())
    {
      localb = localb.d();
      int i = localb.a;
      int j = localb.b;
      localObject = new com.google.zxing.common.a(i);
      paramc = new com.google.zxing.common.a(i);
      i = 0;
      while (i < (j + 1) / 2)
      {
        localObject = localb.a(i, (com.google.zxing.common.a)localObject);
        paramc = localb.a(j - 1 - i, paramc);
        ((com.google.zxing.common.a)localObject).c();
        paramc.c();
        localb.b(i, paramc);
        localb.b(j - 1 - i, (com.google.zxing.common.a)localObject);
        i += 1;
      }
      localObject = a(localb);
      paramc = localb;
    }
    return new b(paramc, (List)localObject);
  }

  private static List<o[]> a(com.google.zxing.common.b paramb)
  {
    ArrayList localArrayList = new ArrayList();
    int k;
    int m;
    o[] arrayOfo;
    int j;
    if (paramb.b > 0)
    {
      k = paramb.b;
      m = paramb.a;
      arrayOfo = new o[8];
      a(arrayOfo, a(paramb, k, m, 0, 0, c), a);
      if (arrayOfo[4] == null)
        break label126;
      j = (int)arrayOfo[4].a;
    }
    for (int i = (int)arrayOfo[4].b; ; i = 0)
    {
      a(arrayOfo, a(paramb, k, m, i, j, d), b);
      if ((arrayOfo[0] != null) || (arrayOfo[3] != null))
        localArrayList.add(arrayOfo);
      return localArrayList;
      label126: j = 0;
    }
  }

  private static void a(o[] paramArrayOfo1, o[] paramArrayOfo2, int[] paramArrayOfInt)
  {
    int i = 0;
    while (i < paramArrayOfInt.length)
    {
      paramArrayOfo1[paramArrayOfInt[i]] = paramArrayOfo2[i];
      i += 1;
    }
  }

  private static int[] a(com.google.zxing.common.b paramb, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    Arrays.fill(paramArrayOfInt2, 0, paramArrayOfInt2.length, 0);
    int n = paramArrayOfInt1.length;
    int i = 0;
    while ((paramb.a(paramInt1, paramInt2)) && (paramInt1 > 0) && (i < 3))
    {
      paramInt1 -= 1;
      i += 1;
    }
    int m = 0;
    int k = 0;
    i = paramInt1;
    int j = paramInt1;
    paramInt1 = i;
    if (j < paramInt3)
    {
      if ((paramb.a(j, paramInt2) ^ k))
      {
        paramArrayOfInt2[m] += 1;
        i = k;
      }
      while (true)
      {
        j += 1;
        k = i;
        break;
        if (m == n - 1)
        {
          if (a(paramArrayOfInt2, paramArrayOfInt1) < 0.42F)
            return new int[] { paramInt1, j };
          paramInt1 += paramArrayOfInt2[0] + paramArrayOfInt2[1];
          System.arraycopy(paramArrayOfInt2, 2, paramArrayOfInt2, 0, n - 2);
          paramArrayOfInt2[(n - 2)] = 0;
          paramArrayOfInt2[(n - 1)] = 0;
        }
        for (i = m - 1; ; i = m + 1)
        {
          paramArrayOfInt2[i] = 1;
          if (k != 0)
            break label229;
          k = 1;
          m = i;
          i = k;
          break;
        }
        label229: k = 0;
        m = i;
        i = k;
      }
    }
    if ((m == n - 1) && (a(paramArrayOfInt2, paramArrayOfInt1) < 0.42F))
      return new int[] { paramInt1, j - 1 };
    return null;
  }

  private static o[] a(com.google.zxing.common.b paramb, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    o[] arrayOfo = new o[4];
    int[] arrayOfInt2 = new int[paramArrayOfInt.length];
    Object localObject;
    int i;
    int[] arrayOfInt1;
    if (paramInt3 < paramInt1)
    {
      localObject = a(paramb, paramInt4, paramInt3, paramInt2, paramArrayOfInt, arrayOfInt2);
      if (localObject != null)
      {
        i = paramInt3;
        while (true)
        {
          paramInt3 = i;
          if (i <= 0)
            break label86;
          i -= 1;
          arrayOfInt1 = a(paramb, paramInt4, i, paramInt2, paramArrayOfInt, arrayOfInt2);
          if (arrayOfInt1 == null)
            break;
          localObject = arrayOfInt1;
        }
        paramInt3 = i + 1;
        label86: arrayOfo[0] = new o(localObject[0], paramInt3);
        arrayOfo[1] = new o(localObject[1], paramInt3);
        i = 1;
        paramInt4 = paramInt3;
      }
    }
    for (paramInt3 = i; ; paramInt3 = i)
    {
      i = paramInt4 + 1;
      int j = i;
      if (paramInt3 != 0)
      {
        localObject = new int[2];
        localObject[0] = ((int)arrayOfo[0].a);
        localObject[1] = ((int)arrayOfo[1].a);
        paramInt3 = 0;
        label176: if (i < paramInt1)
        {
          arrayOfInt1 = a(paramb, localObject[0], i, paramInt2, paramArrayOfInt, arrayOfInt2);
          if ((arrayOfInt1 != null) && (Math.abs(localObject[0] - arrayOfInt1[0]) < 5) && (Math.abs(localObject[1] - arrayOfInt1[1]) < 5))
          {
            paramInt3 = 0;
            localObject = arrayOfInt1;
          }
          while (true)
          {
            i += 1;
            break label176;
            paramInt3 += 5;
            break;
            if (paramInt3 > 25)
              break label271;
            paramInt3 += 1;
          }
        }
        label271: j = i - (paramInt3 + 1);
        arrayOfo[2] = new o(localObject[0], j);
        arrayOfo[3] = new o(localObject[1], j);
      }
      if (j - paramInt4 < 10)
      {
        paramInt1 = 0;
        while (paramInt1 < 4)
        {
          arrayOfo[paramInt1] = null;
          paramInt1 += 1;
        }
      }
      return arrayOfo;
      i = 0;
      paramInt4 = paramInt3;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.b.a
 * JD-Core Version:    0.6.2
 */