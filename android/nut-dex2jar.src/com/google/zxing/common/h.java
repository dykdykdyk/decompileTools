package com.google.zxing.common;

import com.google.zxing.NotFoundException;
import com.google.zxing.g;

public class h extends com.google.zxing.b
{
  private static final byte[] b = new byte[0];
  private byte[] c = b;
  private final int[] d = new int[32];

  public h(g paramg)
  {
    super(paramg);
  }

  private static int a(int[] paramArrayOfInt)
    throws NotFoundException
  {
    int i2 = paramArrayOfInt.length;
    int j = 0;
    int m = 0;
    int i = 0;
    int i1;
    for (int n = 0; j < i2; n = i1)
    {
      k = m;
      if (paramArrayOfInt[j] > m)
      {
        k = paramArrayOfInt[j];
        i = j;
      }
      i1 = n;
      if (paramArrayOfInt[j] > n)
        i1 = paramArrayOfInt[j];
      j += 1;
      m = k;
    }
    int k = 0;
    j = 0;
    m = 0;
    if (k < i2)
    {
      i1 = k - i;
      i1 *= paramArrayOfInt[k] * i1;
      if (i1 <= m)
        break label248;
      m = k;
    }
    for (j = i1; ; j = i1)
    {
      k += 1;
      i1 = j;
      j = m;
      m = i1;
      break;
      if (i > j)
      {
        i1 = i;
        m = j;
      }
      while (true)
      {
        if (i1 - m <= i2 / 16)
          throw NotFoundException.a();
        j = i1 - 1;
        k = -1;
        i = i1 - 1;
        if (i > m)
        {
          i2 = i - m;
          i2 = i2 * i2 * (i1 - i) * (n - paramArrayOfInt[i]);
          if (i2 <= k)
            break label228;
          k = i;
          j = i2;
        }
        while (true)
        {
          i -= 1;
          i2 = k;
          k = j;
          j = i2;
          break;
          return j << 3;
          label228: i2 = j;
          j = k;
          k = i2;
        }
        m = i;
        i1 = j;
      }
      label248: i1 = m;
      m = j;
    }
  }

  private void a(int paramInt)
  {
    if (this.c.length < paramInt)
      this.c = new byte[paramInt];
    paramInt = 0;
    while (paramInt < 32)
    {
      this.d[paramInt] = 0;
      paramInt += 1;
    }
  }

  public final a a(int paramInt, a parama)
    throws NotFoundException
  {
    int i = 1;
    Object localObject = this.a;
    int m = ((g)localObject).a;
    if ((parama == null) || (parama.b < m))
      parama = new a(m);
    int[] arrayOfInt;
    while (true)
    {
      a(m);
      localObject = ((g)localObject).a(paramInt, this.c);
      arrayOfInt = this.d;
      paramInt = 0;
      while (paramInt < m)
      {
        j = (localObject[paramInt] & 0xFF) >> 3;
        arrayOfInt[j] += 1;
        paramInt += 1;
      }
      parama.b();
    }
    int n = a(arrayOfInt);
    int j = localObject[0] & 0xFF;
    int k;
    for (paramInt = localObject[1] & 0xFF; i < m - 1; paramInt = k)
    {
      k = localObject[(i + 1)] & 0xFF;
      if ((paramInt * 4 - j - k) / 2 < n)
        parama.b(i);
      i += 1;
      j = paramInt;
    }
    return parama;
  }

  public b a()
    throws NotFoundException
  {
    Object localObject = this.a;
    int k = ((g)localObject).a;
    int m = ((g)localObject).b;
    b localb = new b(k, m);
    a(k);
    int[] arrayOfInt = this.d;
    int i = 1;
    int j;
    while (i < 5)
    {
      byte[] arrayOfByte = ((g)localObject).a(m * i / 5, this.c);
      n = k * 4 / 5;
      j = k / 5;
      while (j < n)
      {
        int i1 = (arrayOfByte[j] & 0xFF) >> 3;
        arrayOfInt[i1] += 1;
        j += 1;
      }
      i += 1;
    }
    int n = a(arrayOfInt);
    localObject = ((g)localObject).a();
    i = 0;
    while (i < m)
    {
      j = 0;
      while (j < k)
      {
        if ((localObject[(i * k + j)] & 0xFF) < n)
          localb.b(j, i);
        j += 1;
      }
      i += 1;
    }
    return localb;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.h
 * JD-Core Version:    0.6.2
 */