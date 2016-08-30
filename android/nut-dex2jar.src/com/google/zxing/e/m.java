package com.google.zxing.e;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.d;
import com.google.zxing.o;
import java.util.Map;

public final class m extends q
{
  static final int[][] a = { { 1, 1, 3, 3, 1 }, { 3, 1, 1, 1, 3 }, { 1, 3, 1, 1, 3 }, { 3, 3, 1, 1, 1 }, { 1, 1, 3, 1, 3 }, { 3, 1, 3, 1, 1 }, { 1, 3, 3, 1, 1 }, { 1, 1, 1, 3, 3 }, { 3, 1, 1, 3, 1 }, { 1, 3, 1, 3, 1 } };
  private static final int[] b = { 6, 8, 10, 12, 14 };
  private static final int[] d = { 1, 1, 1, 1 };
  private static final int[] e = { 1, 1, 3 };
  private int c = -1;

  private static int a(com.google.zxing.common.a parama)
    throws NotFoundException
  {
    int i = parama.b;
    int j = parama.c(0);
    if (j == i)
      throw NotFoundException.a();
    return j;
  }

  private static int a(int[] paramArrayOfInt)
    throws NotFoundException
  {
    float f1 = 0.38F;
    int j = -1;
    int k = a.length;
    int i = 0;
    if (i < k)
    {
      float f2 = a(paramArrayOfInt, a[i], 0.78F);
      if (f2 >= f1)
        break label62;
      j = i;
      f1 = f2;
    }
    label62: 
    while (true)
    {
      i += 1;
      break;
      if (j >= 0)
        return j;
      throw NotFoundException.a();
    }
  }

  private void a(com.google.zxing.common.a parama, int paramInt)
    throws NotFoundException
  {
    int i = this.c * 10;
    if (i < paramInt);
    while (true)
    {
      paramInt -= 1;
      while ((i > 0) && (paramInt >= 0) && (!parama.a(paramInt)))
      {
        i -= 1;
        paramInt -= 1;
      }
      i = paramInt;
    }
    if (i != 0)
      throw NotFoundException.a();
  }

  private static void a(com.google.zxing.common.a parama, int paramInt1, int paramInt2, StringBuilder paramStringBuilder)
    throws NotFoundException
  {
    int[] arrayOfInt1 = new int[10];
    int[] arrayOfInt2 = new int[5];
    int[] arrayOfInt3 = new int[5];
    while (paramInt1 < paramInt2)
    {
      a(parama, paramInt1, arrayOfInt1);
      int i = 0;
      while (i < 5)
      {
        int j = i * 2;
        arrayOfInt2[i] = arrayOfInt1[j];
        arrayOfInt3[i] = arrayOfInt1[(j + 1)];
        i += 1;
      }
      paramStringBuilder.append((char)(a(arrayOfInt2) + 48));
      paramStringBuilder.append((char)(a(arrayOfInt3) + 48));
      i = 0;
      while (i < 10)
      {
        paramInt1 += arrayOfInt1[i];
        i += 1;
      }
    }
  }

  private int[] b(com.google.zxing.common.a parama)
    throws NotFoundException
  {
    parama.c();
    try
    {
      int[] arrayOfInt = c(parama, a(parama), e);
      a(parama, arrayOfInt[0]);
      int i = arrayOfInt[0];
      arrayOfInt[0] = (parama.b - arrayOfInt[1]);
      arrayOfInt[1] = (parama.b - i);
      return arrayOfInt;
    }
    finally
    {
      parama.c();
    }
  }

  private static int[] c(com.google.zxing.common.a parama, int paramInt, int[] paramArrayOfInt)
    throws NotFoundException
  {
    int i1 = paramArrayOfInt.length;
    int[] arrayOfInt = new int[i1];
    int i2 = parama.b;
    int i = paramInt;
    int m = 0;
    int k = 0;
    int j = paramInt;
    paramInt = i;
    if (j < i2)
    {
      if ((parama.a(j) ^ k))
      {
        arrayOfInt[m] += 1;
        i = k;
        k = paramInt;
      }
      while (true)
      {
        j += 1;
        paramInt = k;
        k = i;
        break;
        if (m == i1 - 1)
        {
          if (a(arrayOfInt, paramArrayOfInt, 0.78F) < 0.38F)
            return new int[] { paramInt, j };
          i = paramInt + (arrayOfInt[0] + arrayOfInt[1]);
          System.arraycopy(arrayOfInt, 2, arrayOfInt, 0, i1 - 2);
          arrayOfInt[(i1 - 2)] = 0;
          arrayOfInt[(i1 - 1)] = 0;
        }
        for (paramInt = m - 1; ; paramInt = m)
        {
          arrayOfInt[paramInt] = 1;
          if (k != 0)
            break label202;
          n = 1;
          k = i;
          m = paramInt;
          i = n;
          break;
          m += 1;
          i = paramInt;
        }
        label202: int n = 0;
        k = i;
        m = paramInt;
        i = n;
      }
    }
    throw NotFoundException.a();
  }

  public final com.google.zxing.m a(int paramInt, com.google.zxing.common.a parama, Map<d, ?> paramMap)
    throws FormatException, NotFoundException
  {
    int[] arrayOfInt = c(parama, a(parama), d);
    this.c = ((arrayOfInt[1] - arrayOfInt[0]) / 4);
    a(parama, arrayOfInt[0]);
    Object localObject1 = b(parama);
    Object localObject2 = new StringBuilder(20);
    a(parama, arrayOfInt[1], localObject1[0], (StringBuilder)localObject2);
    localObject2 = ((StringBuilder)localObject2).toString();
    if (paramMap != null);
    for (parama = (int[])paramMap.get(d.f); ; parama = null)
    {
      paramMap = parama;
      if (parama == null)
        paramMap = b;
      int m = ((String)localObject2).length();
      int n = paramMap.length;
      int j = 0;
      int i = 0;
      int k;
      if (j < n)
      {
        k = paramMap[j];
        if (m != k);
      }
      for (j = 1; ; j = 0)
      {
        k = j;
        if (j == 0)
        {
          k = j;
          if (m > i)
            k = 1;
        }
        if (k == 0)
        {
          throw FormatException.a();
          if (k <= i)
            break label258;
          i = k;
        }
        label258: 
        while (true)
        {
          j += 1;
          break;
          parama = new o(arrayOfInt[1], paramInt);
          paramMap = new o(localObject1[0], paramInt);
          localObject1 = com.google.zxing.a.i;
          return new com.google.zxing.m((String)localObject2, null, new o[] { parama, paramMap }, (com.google.zxing.a)localObject1);
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.m
 * JD-Core Version:    0.6.2
 */