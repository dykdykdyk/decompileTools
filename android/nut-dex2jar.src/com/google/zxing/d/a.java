package com.google.zxing.d;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.e;
import com.google.zxing.d;
import com.google.zxing.l;
import com.google.zxing.m;
import com.google.zxing.n;
import com.google.zxing.o;
import java.util.Map;

public final class a
  implements l
{
  private static final o[] a = new o[0];
  private final com.google.zxing.d.a.c b = new com.google.zxing.d.a.c();

  public final m a(com.google.zxing.c paramc, Map<d, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    int m;
    int k;
    int j;
    int i1;
    int i;
    int i2;
    label52: int n;
    if ((paramMap != null) && (paramMap.containsKey(d.b)))
    {
      paramMap = paramc.a();
      m = paramMap.a;
      k = paramMap.b;
      j = -1;
      i1 = -1;
      i = 0;
      if (i < paramMap.b)
      {
        i2 = 0;
        if (i2 < paramMap.c)
        {
          int i3 = paramMap.d[(paramMap.c * i + i2)];
          if (i3 == 0)
            break label811;
          n = k;
          if (i < k)
            n = i;
          k = i1;
          if (i > i1)
            k = i;
          if (i2 * 32 >= m)
            break label804;
          i1 = 0;
          while (i3 << 31 - i1 == 0)
            i1 += 1;
          if (i2 * 32 + i1 >= m)
            break label804;
          i1 = i2 * 32 + i1;
          label164: if (i2 * 32 + 31 <= j)
            break label785;
          m = 31;
          while (i3 >>> m == 0)
            m -= 1;
          if (i2 * 32 + m <= j)
            break label785;
          i3 = i2 * 32 + m;
          j = k;
          m = n;
          k = i3;
        }
      }
    }
    while (true)
    {
      i2 += 1;
      n = i1;
      i1 = j;
      j = k;
      k = m;
      m = n;
      break label52;
      i += 1;
      break;
      i = j - m;
      j = i1 - k;
      if ((i < 0) || (j < 0))
        paramc = null;
      while (paramc == null)
      {
        throw NotFoundException.a();
        paramc = new int[4];
        paramc[0] = m;
        paramc[1] = k;
        paramc[2] = i;
        paramc[3] = j;
      }
      k = paramc[0];
      m = paramc[1];
      n = paramc[2];
      i1 = paramc[3];
      Object localObject = new com.google.zxing.common.b(30, 33);
      i = 0;
      while (i < 33)
      {
        i2 = (i * i1 + i1 / 2) / 33;
        j = 0;
        while (j < 30)
        {
          if (paramMap.a((j * n + n / 2 + (i & 0x1) * n / 2) / 30 + k, m + i2))
            ((com.google.zxing.common.b)localObject).b(j, i);
          j += 1;
        }
        i += 1;
      }
      paramc = this.b;
      localObject = new com.google.zxing.d.a.a((com.google.zxing.common.b)localObject);
      paramMap = new byte[''];
      k = ((com.google.zxing.d.a.a)localObject).b.b;
      m = ((com.google.zxing.d.a.a)localObject).b.a;
      i = 0;
      while (i < k)
      {
        int[] arrayOfInt = com.google.zxing.d.a.a.a[i];
        j = 0;
        while (j < m)
        {
          n = arrayOfInt[j];
          if ((n >= 0) && (((com.google.zxing.d.a.a)localObject).b.a(j, i)))
          {
            i1 = n / 6;
            i2 = paramMap[i1];
            paramMap[i1] = ((byte)((byte)(1 << 5 - n % 6) | i2));
          }
          j += 1;
        }
        i += 1;
      }
      paramc.a(paramMap, 0, 10, 10, 0);
      i = paramMap[0] & 0xF;
      switch (i)
      {
      default:
        throw FormatException.a();
      case 2:
      case 3:
      case 4:
        paramc.a(paramMap, 20, 84, 40, 1);
        paramc.a(paramMap, 20, 84, 40, 2);
      case 5:
      }
      for (paramc = new byte[94]; ; paramc = new byte[78])
      {
        System.arraycopy(paramMap, 0, paramc, 0, 10);
        System.arraycopy(paramMap, 20, paramc, 10, paramc.length - 10);
        paramc = com.google.zxing.d.a.b.a(paramc, i);
        paramMap = a;
        paramMap = new m(paramc.b, paramc.a, paramMap, com.google.zxing.a.j);
        paramc = paramc.d;
        if (paramc != null)
          paramMap.a(n.d, paramc);
        return paramMap;
        paramc.a(paramMap, 20, 68, 56, 1);
        paramc.a(paramMap, 20, 68, 56, 2);
      }
      throw NotFoundException.a();
      label785: m = n;
      n = j;
      j = k;
      k = n;
      continue;
      label804: i1 = m;
      break label164;
      label811: n = m;
      m = k;
      k = j;
      j = i1;
      i1 = n;
    }
  }

  public final void a()
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.d.a
 * JD-Core Version:    0.6.2
 */