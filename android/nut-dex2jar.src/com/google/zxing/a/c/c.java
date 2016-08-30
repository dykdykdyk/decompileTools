package com.google.zxing.a.c;

import com.google.zxing.common.b;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

public final class c
{
  private static final int[] a = { 4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 };

  private static int a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 88; ; i = 112)
      return (i + paramInt * 16) * paramInt;
  }

  public static a a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Object localObject1 = new d(paramArrayOfByte);
    paramArrayOfByte = Collections.singletonList(g.a);
    int j = 0;
    int i;
    if (j < ((d)localObject1).d.length)
    {
      if (j + 1 < ((d)localObject1).d.length)
      {
        i = localObject1.d[(j + 1)];
        label55: switch (localObject1.d[j])
        {
        default:
          i = 0;
          label106: if (i > 0)
          {
            paramArrayOfByte = d.a(paramArrayOfByte, j, i);
            j += 1;
          }
          break;
        case 13:
        case 46:
        case 44:
        case 58:
        }
      }
      while (true)
      {
        j += 1;
        break;
        i = 0;
        break label55;
        if (i == 10)
        {
          i = 2;
          break label106;
        }
        i = 0;
        break label106;
        if (i == 32)
        {
          i = 3;
          break label106;
        }
        i = 0;
        break label106;
        if (i == 32)
        {
          i = 4;
          break label106;
        }
        i = 0;
        break label106;
        if (i == 32)
        {
          i = 5;
          break label106;
        }
        i = 0;
        break label106;
        localObject2 = new LinkedList();
        paramArrayOfByte = paramArrayOfByte.iterator();
        while (paramArrayOfByte.hasNext())
          ((d)localObject1).a((g)paramArrayOfByte.next(), j, (Collection)localObject2);
        paramArrayOfByte = d.a((Iterable)localObject2);
      }
    }
    Object localObject2 = ((g)Collections.min(paramArrayOfByte, new e((d)localObject1))).a(((d)localObject1).d);
    int n = ((com.google.zxing.common.a)localObject2).b * paramInt1 / 100 + 11;
    int i1 = ((com.google.zxing.common.a)localObject2).b;
    boolean bool;
    if (paramInt2 != 0)
    {
      if (paramInt2 < 0)
      {
        bool = true;
        j = Math.abs(paramInt2);
        if (!bool)
          break label365;
      }
      label365: for (paramInt1 = 4; ; paramInt1 = 32)
      {
        if (j <= paramInt1)
          break label371;
        throw new IllegalArgumentException(String.format("Illegal value %s for layers", new Object[] { Integer.valueOf(paramInt2) }));
        bool = false;
        break;
      }
      label371: paramInt2 = a(j, bool);
      paramInt1 = a[j];
      paramArrayOfByte = a((com.google.zxing.common.a)localObject2, paramInt1);
      if (paramArrayOfByte.b + n > paramInt2 - paramInt2 % paramInt1)
        throw new IllegalArgumentException("Data to large for user specified layer");
      if ((bool) && (paramArrayOfByte.b > paramInt1 * 64))
        throw new IllegalArgumentException("Data to large for user specified layer");
    }
    while (true)
    {
      localObject1 = a(paramArrayOfByte, paramInt2, paramInt1);
      int i2 = paramArrayOfByte.b / paramInt1;
      paramArrayOfByte = new com.google.zxing.common.a();
      if (bool)
      {
        paramArrayOfByte.b(j - 1, 2);
        paramArrayOfByte.b(i2 - 1, 6);
        paramArrayOfByte = a(paramArrayOfByte, 28, 4);
        if (!bool)
          break label735;
      }
      int[] arrayOfInt;
      label574: int m;
      label699: label735: for (paramInt1 = j * 4 + 11; ; paramInt1 = j * 4 + 14)
      {
        arrayOfInt = new int[paramInt1];
        if (!bool)
          break label1007;
        paramInt2 = 0;
        while (paramInt2 < arrayOfInt.length)
        {
          arrayOfInt[paramInt2] = paramInt2;
          paramInt2 += 1;
        }
        i = 0;
        paramArrayOfByte = null;
        paramInt2 = 0;
        if (paramInt2 > 32)
          throw new IllegalArgumentException("Data too large for an Aztec code");
        if (paramInt2 <= 3)
        {
          bool = true;
          if (!bool)
            break label699;
        }
        for (j = paramInt2 + 1; ; j = paramInt2)
        {
          m = a(j, bool);
          localObject1 = paramArrayOfByte;
          k = i;
          if (i1 + n <= m)
          {
            paramInt1 = i;
            if (i != a[j])
            {
              paramInt1 = a[j];
              paramArrayOfByte = a((com.google.zxing.common.a)localObject2, paramInt1);
            }
            if (bool)
            {
              localObject1 = paramArrayOfByte;
              k = paramInt1;
              if (paramArrayOfByte.b > paramInt1 * 64);
            }
            else
            {
              if (paramArrayOfByte.b + n <= m - m % paramInt1)
                break label1299;
              k = paramInt1;
              localObject1 = paramArrayOfByte;
            }
          }
          paramInt2 += 1;
          paramArrayOfByte = (byte[])localObject1;
          i = k;
          break;
          bool = false;
          break label574;
        }
        paramArrayOfByte.b(j - 1, 5);
        paramArrayOfByte.b(i2 - 1, 11);
        paramArrayOfByte = a(paramArrayOfByte, 40, 4);
        break;
      }
      paramInt2 = paramInt1;
      localObject2 = new b(paramInt2);
      int k = 0;
      i = 0;
      while (true)
      {
        if (i >= j)
          break label1127;
        if (bool)
        {
          m = (j - i) * 4 + 9;
          n = 0;
        }
        while (true)
        {
          if (n >= m)
            break label1110;
          int i3 = n * 2;
          i1 = 0;
          while (true)
            if (i1 < 2)
            {
              if (((com.google.zxing.common.a)localObject1).a(k + i3 + i1))
                ((b)localObject2).b(arrayOfInt[(i * 2 + i1)], arrayOfInt[(i * 2 + n)]);
              if (((com.google.zxing.common.a)localObject1).a(m * 2 + k + i3 + i1))
                ((b)localObject2).b(arrayOfInt[(i * 2 + n)], arrayOfInt[(paramInt1 - 1 - i * 2 - i1)]);
              if (((com.google.zxing.common.a)localObject1).a(m * 4 + k + i3 + i1))
                ((b)localObject2).b(arrayOfInt[(paramInt1 - 1 - i * 2 - i1)], arrayOfInt[(paramInt1 - 1 - i * 2 - n)]);
              if (((com.google.zxing.common.a)localObject1).a(m * 6 + k + i3 + i1))
                ((b)localObject2).b(arrayOfInt[(paramInt1 - 1 - i * 2 - n)], arrayOfInt[(i * 2 + i1)]);
              i1 += 1;
              continue;
              label1007: k = paramInt1 + 1 + (paramInt1 / 2 - 1) / 15 * 2;
              m = paramInt1 / 2;
              n = k / 2;
              i = 0;
              while (true)
              {
                paramInt2 = k;
                if (i >= m)
                  break;
                paramInt2 = i / 15 + i;
                arrayOfInt[(m - i - 1)] = (n - paramInt2 - 1);
                arrayOfInt[(m + i)] = (paramInt2 + n + 1);
                i += 1;
              }
              m = (j - i) * 4 + 12;
              break;
            }
          n += 1;
        }
        label1110: k = m * 8 + k;
        i += 1;
      }
      label1127: a((b)localObject2, bool, paramInt2, paramArrayOfByte);
      if (bool)
        a((b)localObject2, paramInt2 / 2, 5);
      while (true)
      {
        paramArrayOfByte = new a();
        paramArrayOfByte.a = bool;
        paramArrayOfByte.b = paramInt2;
        paramArrayOfByte.c = j;
        paramArrayOfByte.d = i2;
        paramArrayOfByte.e = ((b)localObject2);
        return paramArrayOfByte;
        a((b)localObject2, paramInt2 / 2, 7);
        k = 0;
        i = 0;
        while (k < paramInt1 / 2 - 1)
        {
          m = paramInt2 / 2 & 0x1;
          while (m < paramInt2)
          {
            ((b)localObject2).b(paramInt2 / 2 - i, m);
            ((b)localObject2).b(paramInt2 / 2 + i, m);
            ((b)localObject2).b(m, paramInt2 / 2 - i);
            ((b)localObject2).b(m, paramInt2 / 2 + i);
            m += 2;
          }
          k += 15;
          i += 16;
        }
      }
      label1299: paramInt2 = m;
    }
  }

  private static com.google.zxing.common.a a(com.google.zxing.common.a parama, int paramInt)
  {
    com.google.zxing.common.a locala = new com.google.zxing.common.a();
    int n = parama.b;
    int i1 = (1 << paramInt) - 2;
    int i = 0;
    if (i < n)
    {
      int j = 0;
      int m;
      for (int k = 0; j < paramInt; k = m)
      {
        if (i + j < n)
        {
          m = k;
          if (!parama.a(i + j));
        }
        else
        {
          m = k | 1 << paramInt - 1 - j;
        }
        j += 1;
      }
      if ((k & i1) == i1)
      {
        locala.b(k & i1, paramInt);
        i -= 1;
      }
      while (true)
      {
        i += paramInt;
        break;
        if ((k & i1) == 0)
        {
          locala.b(k | 0x1, paramInt);
          i -= 1;
        }
        else
        {
          locala.b(k, paramInt);
        }
      }
    }
    return locala;
  }

  private static com.google.zxing.common.a a(com.google.zxing.common.a parama, int paramInt1, int paramInt2)
  {
    int i = parama.b / paramInt2;
    Object localObject;
    switch (paramInt2)
    {
    case 5:
    case 7:
    case 9:
    case 11:
    default:
      throw new IllegalArgumentException("Unsupported word size " + paramInt2);
    case 4:
      localObject = com.google.zxing.common.reedsolomon.a.d;
    case 6:
    case 8:
    case 10:
    case 12:
    }
    while (true)
    {
      localObject = new com.google.zxing.common.reedsolomon.d((com.google.zxing.common.reedsolomon.a)localObject);
      int j = paramInt1 / paramInt2;
      parama = b(parama, paramInt2, j);
      ((com.google.zxing.common.reedsolomon.d)localObject).a(parama, j - i);
      localObject = new com.google.zxing.common.a();
      ((com.google.zxing.common.a)localObject).b(0, paramInt1 % paramInt2);
      i = parama.length;
      paramInt1 = 0;
      while (paramInt1 < i)
      {
        ((com.google.zxing.common.a)localObject).b(parama[paramInt1], paramInt2);
        paramInt1 += 1;
      }
      localObject = com.google.zxing.common.reedsolomon.a.c;
      continue;
      localObject = com.google.zxing.common.reedsolomon.a.g;
      continue;
      localObject = com.google.zxing.common.reedsolomon.a.b;
      continue;
      localObject = com.google.zxing.common.reedsolomon.a.a;
    }
    return localObject;
  }

  private static void a(b paramb, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (i < paramInt2)
    {
      int j = paramInt1 - i;
      while (j <= paramInt1 + i)
      {
        paramb.b(j, paramInt1 - i);
        paramb.b(j, paramInt1 + i);
        paramb.b(paramInt1 - i, j);
        paramb.b(paramInt1 + i, j);
        j += 1;
      }
      i += 2;
    }
    paramb.b(paramInt1 - paramInt2, paramInt1 - paramInt2);
    paramb.b(paramInt1 - paramInt2 + 1, paramInt1 - paramInt2);
    paramb.b(paramInt1 - paramInt2, paramInt1 - paramInt2 + 1);
    paramb.b(paramInt1 + paramInt2, paramInt1 - paramInt2);
    paramb.b(paramInt1 + paramInt2, paramInt1 - paramInt2 + 1);
    paramb.b(paramInt1 + paramInt2, paramInt1 + paramInt2 - 1);
  }

  private static void a(b paramb, boolean paramBoolean, int paramInt, com.google.zxing.common.a parama)
  {
    int j = 0;
    int i = 0;
    int k = paramInt / 2;
    paramInt = j;
    if (paramBoolean)
    {
      paramInt = i;
      while (paramInt < 7)
      {
        i = k - 3 + paramInt;
        if (parama.a(paramInt))
          paramb.b(i, k - 5);
        if (parama.a(paramInt + 7))
          paramb.b(k + 5, i);
        if (parama.a(20 - paramInt))
          paramb.b(i, k + 5);
        if (parama.a(27 - paramInt))
          paramb.b(k - 5, i);
        paramInt += 1;
      }
    }
    while (paramInt < 10)
    {
      i = k - 5 + paramInt + paramInt / 5;
      if (parama.a(paramInt))
        paramb.b(i, k - 7);
      if (parama.a(paramInt + 10))
        paramb.b(k + 7, i);
      if (parama.a(29 - paramInt))
        paramb.b(i, k + 7);
      if (parama.a(39 - paramInt))
        paramb.b(k - 7, i);
      paramInt += 1;
    }
  }

  private static int[] b(com.google.zxing.common.a parama, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = new int[paramInt2];
    int m = parama.b / paramInt1;
    paramInt2 = 0;
    while (paramInt2 < m)
    {
      int i = 0;
      int j = 0;
      if (i < paramInt1)
      {
        if (parama.a(paramInt2 * paramInt1 + i));
        for (int k = 1 << paramInt1 - i - 1; ; k = 0)
        {
          j |= k;
          i += 1;
          break;
        }
      }
      arrayOfInt[paramInt2] = j;
      paramInt2 += 1;
    }
    return arrayOfInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.a.c.c
 * JD-Core Version:    0.6.2
 */