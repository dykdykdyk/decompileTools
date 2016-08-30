package com.google.zxing.g.a;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.e;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.google.zxing.d;
import java.util.Map;

public final class m
{
  private final com.google.zxing.common.reedsolomon.c a = new com.google.zxing.common.reedsolomon.c(com.google.zxing.common.reedsolomon.a.e);

  private e a(a parama, Map<d, ?> paramMap)
    throws FormatException, ChecksumException
  {
    r localr = parama.b();
    n localn = parama.a().a;
    Object localObject1 = parama.a();
    Object localObject2 = parama.b();
    localObject1 = c.a(((o)localObject1).b);
    int i7 = parama.a.b;
    ((c)localObject1).a(parama.a, i7);
    int k = ((r)localObject2).a();
    Object localObject3 = new com.google.zxing.common.b(k);
    ((com.google.zxing.common.b)localObject3).a(0, 0, 9, 9);
    ((com.google.zxing.common.b)localObject3).a(k - 8, 0, 8, 9);
    ((com.google.zxing.common.b)localObject3).a(0, k - 8, 9, 8);
    int m = ((r)localObject2).b.length;
    int i = 0;
    int n;
    while (i < m)
    {
      n = localObject2.b[i];
      j = 0;
      while (j < m)
      {
        if (((i != 0) || ((j != 0) && (j != m - 1))) && ((i != m - 1) || (j != 0)))
          ((com.google.zxing.common.b)localObject3).a(localObject2.b[j] - 2, n - 2, 5, 5);
        j += 1;
      }
      i += 1;
    }
    ((com.google.zxing.common.b)localObject3).a(6, 9, 1, k - 17);
    ((com.google.zxing.common.b)localObject3).a(9, 6, k - 17, 1);
    if (((r)localObject2).a > 6)
    {
      ((com.google.zxing.common.b)localObject3).a(k - 11, 0, 3, 6);
      ((com.google.zxing.common.b)localObject3).a(0, k - 11, 6, 3);
    }
    localObject1 = new byte[((r)localObject2).c];
    m = 0;
    i = 0;
    int j = 0;
    k = i7 - 1;
    int i2 = 1;
    int i3;
    label338: int i4;
    label359: int i5;
    label372: int i1;
    if (k > 0)
    {
      i3 = k;
      if (k == 6)
        i3 = k - 1;
      k = 0;
      if (k < i7)
        if (i2 != 0)
        {
          i4 = i7 - 1 - k;
          i5 = 0;
          n = j;
          j = i;
          i = n;
          if (i5 >= 2)
            break label492;
          i1 = i;
          n = j;
          if (((com.google.zxing.common.b)localObject3).a(i3 - i5, i4))
            break label1074;
          int i6 = i + 1;
          j <<= 1;
          i = j;
          if (parama.a.a(i3 - i5, i4))
            i = j | 0x1;
          i1 = i6;
          n = i;
          if (i6 != 8)
            break label1074;
          j = m + 1;
          localObject1[m] = ((byte)i);
          i = 0;
          n = 0;
          m = j;
        }
    }
    for (j = n; ; j = n)
    {
      i5 += 1;
      break label372;
      i4 = k;
      break label359;
      label492: k += 1;
      n = j;
      j = i;
      i = n;
      break label338;
      k = i3 - 2;
      i2 ^= 1;
      break;
      if (m != ((r)localObject2).c)
        throw FormatException.a();
      if (localObject1.length != localr.c)
        throw new IllegalArgumentException();
      localObject2 = localr.a(localn);
      j = 0;
      localObject3 = ((t)localObject2).b;
      k = localObject3.length;
      i = 0;
      while (i < k)
      {
        j += localObject3[i].a;
        i += 1;
      }
      parama = new b[j];
      k = 0;
      m = localObject3.length;
      i = 0;
      while (i < m)
      {
        Object localObject4 = localObject3[i];
        j = 0;
        while (j < localObject4.a)
        {
          n = localObject4.b;
          parama[k] = new b(n, new byte[((t)localObject2).a + n]);
          j += 1;
          k += 1;
        }
        i += 1;
      }
      j = parama[0].b.length;
      i = parama.length - 1;
      while ((i >= 0) && (parama[i].b.length != j))
        i -= 1;
      i1 = i + 1;
      n = j - ((t)localObject2).a;
      j = 0;
      i = 0;
      while (j < n)
      {
        m = 0;
        while (m < k)
        {
          parama[m].b[j] = localObject1[i];
          m += 1;
          i += 1;
        }
        j += 1;
      }
      m = i1;
      j = i;
      while (m < k)
      {
        parama[m].b[n] = localObject1[j];
        m += 1;
        j += 1;
      }
      i2 = parama[0].b.length;
      i = n;
      while (i < i2)
      {
        m = 0;
        if (m < k)
        {
          if (m < i1);
          for (n = i; ; n = i + 1)
          {
            parama[m].b[n] = localObject1[j];
            m += 1;
            j += 1;
            break;
          }
        }
        i += 1;
      }
      j = 0;
      k = parama.length;
      i = 0;
      while (i < k)
      {
        j += parama[i].a;
        i += 1;
      }
      localObject1 = new byte[j];
      j = 0;
      m = parama.length;
      i = 0;
      while (i < m)
      {
        localObject2 = parama[i];
        localObject3 = ((b)localObject2).b;
        n = ((b)localObject2).a;
        a((byte[])localObject3, n);
        k = 0;
        while (k < n)
        {
          localObject1[j] = localObject3[k];
          k += 1;
          j += 1;
        }
        i += 1;
      }
      return l.a((byte[])localObject1, localr, localn, paramMap);
      label1074: i = i1;
    }
  }

  private void a(byte[] paramArrayOfByte, int paramInt)
    throws ChecksumException
  {
    int j = 0;
    int k = paramArrayOfByte.length;
    int[] arrayOfInt = new int[k];
    int i = 0;
    while (i < k)
    {
      paramArrayOfByte[i] &= 255;
      i += 1;
    }
    i = paramArrayOfByte.length;
    try
    {
      this.a.a(arrayOfInt, i - paramInt);
      i = j;
      while (i < paramInt)
      {
        paramArrayOfByte[i] = ((byte)arrayOfInt[i]);
        i += 1;
      }
    }
    catch (ReedSolomonException paramArrayOfByte)
    {
      throw ChecksumException.a();
    }
  }

  public final e a(com.google.zxing.common.b paramb, Map<d, ?> paramMap)
    throws FormatException, ChecksumException
  {
    a locala = new a(paramb);
    try
    {
      paramb = a(locala, paramMap);
      return paramb;
    }
    catch (FormatException localFormatException)
    {
      paramb = null;
      try
      {
        if (locala.c != null)
        {
          c localc = c.a(locala.c.b);
          i = locala.a.b;
          localc.a(locala.a, i);
        }
        locala.b = null;
        locala.c = null;
        locala.d = true;
        locala.b();
        locala.a();
        i = 0;
        if (i < locala.a.a)
        {
          j = i + 1;
          if (j >= locala.a.b)
            break label235;
          if (locala.a.a(i, j) != locala.a.a(j, i))
          {
            locala.a.c(j, i);
            locala.a.c(i, j);
          }
        }
        else
        {
          paramMap = a(locala, paramMap);
          paramMap.g = new q();
          return paramMap;
        }
      }
      catch (FormatException paramMap)
      {
        if (localFormatException != null)
          throw localFormatException;
        if (paramb != null)
          throw paramb;
        throw paramMap;
      }
      catch (ChecksumException paramMap)
      {
        while (true)
        {
          int j;
          continue;
          j += 1;
        }
      }
    }
    catch (ChecksumException paramb)
    {
      while (true)
      {
        int i;
        Object localObject = null;
        continue;
        label235: i += 1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.m
 * JD-Core Version:    0.6.2
 */