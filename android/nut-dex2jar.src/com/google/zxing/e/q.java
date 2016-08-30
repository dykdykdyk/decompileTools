package com.google.zxing.e;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.b;
import com.google.zxing.c;
import com.google.zxing.common.a;
import com.google.zxing.d;
import com.google.zxing.g;
import com.google.zxing.l;
import com.google.zxing.m;
import com.google.zxing.n;
import com.google.zxing.o;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;
import java.util.Map<Lcom.google.zxing.d;*>;

public abstract class q
  implements l
{
  public static float a(int[] paramArrayOfInt1, int[] paramArrayOfInt2, float paramFloat)
  {
    int m = paramArrayOfInt1.length;
    int j = 0;
    int k = 0;
    int i = 0;
    while (j < m)
    {
      i += paramArrayOfInt1[j];
      k += paramArrayOfInt2[j];
      j += 1;
    }
    if (i < k);
    float f1;
    label144: 
    while (true)
    {
      return (1.0F / 1.0F);
      float f3 = i / k;
      f1 = 0.0F;
      j = 0;
      if (j >= m)
        break;
      k = paramArrayOfInt1[j];
      float f2 = paramArrayOfInt2[j] * f3;
      if (k > f2);
      for (f2 = k - f2; ; f2 -= k)
      {
        if (f2 > paramFloat * f3)
          break label144;
        f1 += f2;
        j += 1;
        break;
      }
    }
    return f1 / i;
  }

  public static void a(a parama, int paramInt, int[] paramArrayOfInt)
    throws NotFoundException
  {
    int m = paramArrayOfInt.length;
    Arrays.fill(paramArrayOfInt, 0, m, 0);
    int n = parama.b;
    if (paramInt >= n)
      throw NotFoundException.a();
    if (!parama.a(paramInt));
    int j;
    for (int i = 1; ; i = 0)
    {
      k = 0;
      j = paramInt;
      paramInt = k;
      while (true)
      {
        if (j >= n)
          break label126;
        if (!(parama.a(j) ^ i))
          break;
        paramArrayOfInt[paramInt] += 1;
        j += 1;
      }
    }
    int k = paramInt + 1;
    paramInt = k;
    if (k != m)
    {
      paramArrayOfInt[k] = 1;
      if (i == 0);
      for (paramInt = 1; ; paramInt = 0)
      {
        i = paramInt;
        paramInt = k;
        break;
      }
    }
    label126: if ((paramInt != m) && ((paramInt != m - 1) || (j != n)))
      throw NotFoundException.a();
  }

  private m b(c paramc, Map<d, ?> paramMap)
    throws NotFoundException
  {
    int i1 = paramc.a.a.a;
    int m = paramc.a.a.b;
    Object localObject1 = new a(i1);
    int i;
    int j;
    label61: int i2;
    if ((paramMap != null) && (paramMap.containsKey(d.d)))
    {
      i = 1;
      if (i == 0)
        break label348;
      j = 8;
      i2 = Math.max(1, m >> j);
      if (i == 0)
        break label354;
      i = m;
      label79: j = 0;
    }
    while (true)
      while (true)
      {
        if (j >= i)
          break label412;
        int n = (j + 1) / 2;
        int k;
        if ((j & 0x1) == 0)
        {
          k = 1;
          label106: if (k == 0)
            break label366;
          k = n;
          n = (m >> 1) + k * i2;
          if ((n < 0) || (n >= m))
            break label412;
        }
        try
        {
          Object localObject2 = paramc.a.a(n, (a)localObject1);
          localObject1 = localObject2;
          k = 0;
          while (true)
            while (true)
            {
              localObject3 = localObject1;
              localObject2 = paramMap;
              if (k >= 2)
                break label396;
              localObject2 = paramMap;
              if (k == 1)
              {
                ((a)localObject1).c();
                localObject2 = paramMap;
                if (paramMap != null)
                {
                  localObject2 = paramMap;
                  if (paramMap.containsKey(d.j))
                  {
                    localObject2 = new EnumMap(d.class);
                    ((Map)localObject2).putAll(paramMap);
                    ((Map)localObject2).remove(d.j);
                  }
                }
              }
              try
              {
                paramMap = a(n, (a)localObject1, (Map)localObject2);
                if (k == 1)
                {
                  paramMap.a(n.b, Integer.valueOf(180));
                  localObject3 = paramMap.c;
                  if (localObject3 != null)
                  {
                    localObject3[0] = new o(i1 - localObject3[0].a - 1.0F, localObject3[0].b);
                    localObject3[1] = new o(i1 - localObject3[1].a - 1.0F, localObject3[1].b);
                  }
                }
                return paramMap;
                i = 0;
                break;
                label348: j = 5;
                break label61;
                label354: i = 15;
                break label79;
                k = 0;
                break label106;
                label366: k = -n;
              }
              catch (ReaderException paramMap)
              {
                k += 1;
                paramMap = (Map<d, ?>)localObject2;
              }
            }
        }
        catch (NotFoundException localNotFoundException)
        {
          Map<d, ?> localMap = paramMap;
          Object localObject3 = localObject1;
          label396: j += 1;
          localObject1 = localObject3;
          paramMap = localMap;
        }
      }
    label412: throw NotFoundException.a();
  }

  public static void b(a parama, int paramInt, int[] paramArrayOfInt)
    throws NotFoundException
  {
    int i = paramArrayOfInt.length;
    boolean bool = parama.a(paramInt);
    while ((paramInt > 0) && (i >= 0))
    {
      int j = paramInt - 1;
      paramInt = j;
      if (parama.a(j) != bool)
      {
        i -= 1;
        if (!bool)
        {
          bool = true;
          paramInt = j;
        }
        else
        {
          bool = false;
          paramInt = j;
        }
      }
    }
    if (i >= 0)
      throw NotFoundException.a();
    a(parama, paramInt + 1, paramArrayOfInt);
  }

  public abstract m a(int paramInt, a parama, Map<d, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException;

  public m a(c paramc, Map<d, ?> paramMap)
    throws NotFoundException, FormatException
  {
    try
    {
      paramc = b(paramc, paramMap);
      return paramc;
    }
    catch (NotFoundException paramc)
    {
      if (paramMap != null)
        paramMap.containsKey(d.d);
    }
    throw paramc;
  }

  public void a()
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.q
 * JD-Core Version:    0.6.2
 */