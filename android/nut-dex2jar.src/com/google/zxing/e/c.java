package com.google.zxing.e;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.d;
import com.google.zxing.m;
import com.google.zxing.o;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class c extends q
{
  static final int[][] a = { { 2, 1, 2, 2, 2, 2 }, { 2, 2, 2, 1, 2, 2 }, { 2, 2, 2, 2, 2, 1 }, { 1, 2, 1, 2, 2, 3 }, { 1, 2, 1, 3, 2, 2 }, { 1, 3, 1, 2, 2, 2 }, { 1, 2, 2, 2, 1, 3 }, { 1, 2, 2, 3, 1, 2 }, { 1, 3, 2, 2, 1, 2 }, { 2, 2, 1, 2, 1, 3 }, { 2, 2, 1, 3, 1, 2 }, { 2, 3, 1, 2, 1, 2 }, { 1, 1, 2, 2, 3, 2 }, { 1, 2, 2, 1, 3, 2 }, { 1, 2, 2, 2, 3, 1 }, { 1, 1, 3, 2, 2, 2 }, { 1, 2, 3, 1, 2, 2 }, { 1, 2, 3, 2, 2, 1 }, { 2, 2, 3, 2, 1, 1 }, { 2, 2, 1, 1, 3, 2 }, { 2, 2, 1, 2, 3, 1 }, { 2, 1, 3, 2, 1, 2 }, { 2, 2, 3, 1, 1, 2 }, { 3, 1, 2, 1, 3, 1 }, { 3, 1, 1, 2, 2, 2 }, { 3, 2, 1, 1, 2, 2 }, { 3, 2, 1, 2, 2, 1 }, { 3, 1, 2, 2, 1, 2 }, { 3, 2, 2, 1, 1, 2 }, { 3, 2, 2, 2, 1, 1 }, { 2, 1, 2, 1, 2, 3 }, { 2, 1, 2, 3, 2, 1 }, { 2, 3, 2, 1, 2, 1 }, { 1, 1, 1, 3, 2, 3 }, { 1, 3, 1, 1, 2, 3 }, { 1, 3, 1, 3, 2, 1 }, { 1, 1, 2, 3, 1, 3 }, { 1, 3, 2, 1, 1, 3 }, { 1, 3, 2, 3, 1, 1 }, { 2, 1, 1, 3, 1, 3 }, { 2, 3, 1, 1, 1, 3 }, { 2, 3, 1, 3, 1, 1 }, { 1, 1, 2, 1, 3, 3 }, { 1, 1, 2, 3, 3, 1 }, { 1, 3, 2, 1, 3, 1 }, { 1, 1, 3, 1, 2, 3 }, { 1, 1, 3, 3, 2, 1 }, { 1, 3, 3, 1, 2, 1 }, { 3, 1, 3, 1, 2, 1 }, { 2, 1, 1, 3, 3, 1 }, { 2, 3, 1, 1, 3, 1 }, { 2, 1, 3, 1, 1, 3 }, { 2, 1, 3, 3, 1, 1 }, { 2, 1, 3, 1, 3, 1 }, { 3, 1, 1, 1, 2, 3 }, { 3, 1, 1, 3, 2, 1 }, { 3, 3, 1, 1, 2, 1 }, { 3, 1, 2, 1, 1, 3 }, { 3, 1, 2, 3, 1, 1 }, { 3, 3, 2, 1, 1, 1 }, { 3, 1, 4, 1, 1, 1 }, { 2, 2, 1, 4, 1, 1 }, { 4, 3, 1, 1, 1, 1 }, { 1, 1, 1, 2, 2, 4 }, { 1, 1, 1, 4, 2, 2 }, { 1, 2, 1, 1, 2, 4 }, { 1, 2, 1, 4, 2, 1 }, { 1, 4, 1, 1, 2, 2 }, { 1, 4, 1, 2, 2, 1 }, { 1, 1, 2, 2, 1, 4 }, { 1, 1, 2, 4, 1, 2 }, { 1, 2, 2, 1, 1, 4 }, { 1, 2, 2, 4, 1, 1 }, { 1, 4, 2, 1, 1, 2 }, { 1, 4, 2, 2, 1, 1 }, { 2, 4, 1, 2, 1, 1 }, { 2, 2, 1, 1, 1, 4 }, { 4, 1, 3, 1, 1, 1 }, { 2, 4, 1, 1, 1, 2 }, { 1, 3, 4, 1, 1, 1 }, { 1, 1, 1, 2, 4, 2 }, { 1, 2, 1, 1, 4, 2 }, { 1, 2, 1, 2, 4, 1 }, { 1, 1, 4, 2, 1, 2 }, { 1, 2, 4, 1, 1, 2 }, { 1, 2, 4, 2, 1, 1 }, { 4, 1, 1, 2, 1, 2 }, { 4, 2, 1, 1, 1, 2 }, { 4, 2, 1, 2, 1, 1 }, { 2, 1, 2, 1, 4, 1 }, { 2, 1, 4, 1, 2, 1 }, { 4, 1, 2, 1, 2, 1 }, { 1, 1, 1, 1, 4, 3 }, { 1, 1, 1, 3, 4, 1 }, { 1, 3, 1, 1, 4, 1 }, { 1, 1, 4, 1, 1, 3 }, { 1, 1, 4, 3, 1, 1 }, { 4, 1, 1, 1, 1, 3 }, { 4, 1, 1, 3, 1, 1 }, { 1, 1, 3, 1, 4, 1 }, { 1, 1, 4, 1, 3, 1 }, { 3, 1, 1, 1, 4, 1 }, { 4, 1, 1, 1, 3, 1 }, { 2, 1, 1, 4, 1, 2 }, { 2, 1, 1, 2, 1, 4 }, { 2, 1, 1, 2, 3, 2 }, { 2, 3, 3, 1, 1, 1, 2 } };

  private static int a(com.google.zxing.common.a parama, int[] paramArrayOfInt, int paramInt)
    throws NotFoundException
  {
    a(parama, paramInt, paramArrayOfInt);
    float f1 = 0.25F;
    int i = -1;
    paramInt = 0;
    while (paramInt < a.length)
    {
      float f3 = a(paramArrayOfInt, a[paramInt], 0.7F);
      float f2 = f1;
      if (f3 < f1)
      {
        i = paramInt;
        f2 = f3;
      }
      paramInt += 1;
      f1 = f2;
    }
    if (i >= 0)
      return i;
    throw NotFoundException.a();
  }

  public final m a(int paramInt, com.google.zxing.common.a parama, Map<d, ?> paramMap)
    throws NotFoundException, FormatException, ChecksumException
  {
    if ((paramMap != null) && (paramMap.containsKey(d.h)));
    int i2;
    int j;
    int k;
    int i;
    int n;
    int m;
    for (int i6 = 1; ; i6 = 0)
    {
      i2 = parama.b;
      j = parama.c(0);
      k = 0;
      paramMap = new int[6];
      i = 0;
      n = j;
      while (true)
      {
        if (n >= i2)
          break label369;
        if (!(parama.a(n) ^ i))
          break;
        paramMap[k] += 1;
        m = k;
        k = j;
        j = m;
        m = j;
        n += 1;
        j = k;
        k = m;
      }
    }
    float f1;
    int i1;
    label132: float f2;
    if (k == 5)
    {
      f1 = 0.25F;
      i1 = -1;
      m = 103;
      if (m <= 105)
      {
        f2 = a(paramMap, a[m], 0.7F);
        if (f2 >= f1)
          break label2212;
        i1 = m;
        f1 = f2;
      }
    }
    label640: label1942: label1949: label2212: 
    while (true)
    {
      m += 1;
      break label132;
      if ((i1 >= 0) && (parama.a(Math.max(0, j - (n - j) / 2), j)))
      {
        localObject2 = new int[3];
        localObject2[0] = j;
        localObject2[1] = n;
        localObject2[2] = i1;
        i2 = localObject2[2];
        paramMap = new ArrayList(20);
        paramMap.add(Byte.valueOf((byte)i2));
      }
      switch (i2)
      {
      default:
        throw FormatException.a();
        m = paramMap[0] + paramMap[1] + j;
        System.arraycopy(paramMap, 2, paramMap, 0, 4);
        paramMap[4] = 0;
        paramMap[5] = 0;
        j = k - 1;
        k = m;
        paramMap[j] = 1;
        if (i == 0);
        for (i = 1; ; i = 0)
        {
          break;
          m = k + 1;
          k = j;
          j = m;
          break label330;
        }
        throw NotFoundException.a();
      case 103:
        label330: label369: i = 101;
      case 104:
      case 105:
      }
      int i7;
      int i5;
      int i4;
      int i9;
      int i8;
      int i11;
      int i12;
      while (true)
      {
        localObject1 = new StringBuilder(20);
        k = localObject2[0];
        i1 = localObject2[1];
        localObject3 = new int[6];
        m = 1;
        n = 0;
        i3 = 0;
        i7 = 0;
        i5 = 0;
        i4 = 0;
        i9 = 0;
        i8 = 0;
        j = i;
        i = i9;
        if (i != 0)
          break label1949;
        i11 = 0;
        i12 = a(parama, (int[])localObject3, i1);
        paramMap.add(Byte.valueOf((byte)i12));
        if (i12 != 106)
          m = 1;
        i9 = i5;
        i8 = i2;
        if (i12 != 106)
        {
          i9 = i5 + 1;
          i8 = i2 + i9 * i12;
        }
        k = 0;
        i5 = i1;
        while (k < 6)
        {
          i5 += localObject3[k];
          k += 1;
        }
        i = 100;
        continue;
        i = 99;
      }
      int i10;
      switch (i12)
      {
      default:
        switch (j)
        {
        default:
          k = m;
          i10 = j;
          j = i;
          i2 = i11;
          m = k;
          k = i3;
          i = i10;
          i3 = i;
          if (i7 != 0)
            if (i != 101)
              break label1942;
          break;
        case 101:
        case 100:
        case 99:
        }
        break;
      case 103:
      case 104:
      case 105:
      }
      for (int i3 = 100; ; i3 = 101)
      {
        i7 = i2;
        i10 = i5;
        i11 = i4;
        i4 = i12;
        i12 = i3;
        i = j;
        i5 = i9;
        i2 = i8;
        i3 = k;
        i8 = i11;
        j = i12;
        k = i1;
        i1 = i10;
        break;
        throw FormatException.a();
        if (i12 < 64)
        {
          if (i3 == n)
            ((StringBuilder)localObject1).append((char)(i12 + 32));
          while (true)
          {
            i2 = 0;
            k = j;
            j = i;
            i = k;
            k = i2;
            i2 = i11;
            break;
            ((StringBuilder)localObject1).append((char)(i12 + 32 + 128));
          }
        }
        if (i12 < 96)
        {
          if (i3 == n)
            ((StringBuilder)localObject1).append((char)(i12 - 64));
          while (true)
          {
            i2 = 0;
            k = j;
            j = i;
            i = k;
            k = i2;
            i2 = i11;
            break;
            ((StringBuilder)localObject1).append((char)(i12 + 64));
          }
        }
        if (i12 != 106)
          m = 0;
        k = i;
        switch (i12)
        {
        default:
          k = i;
        case 103:
        case 104:
        case 105:
        case 102:
        case 96:
        case 97:
        case 101:
        case 98:
        case 100:
        case 99:
        case 106:
        }
        while (true)
        {
          i = j;
          j = k;
          k = i3;
          i2 = i11;
          break;
          k = i;
          if (i6 != 0)
          {
            if (((StringBuilder)localObject1).length() == 0)
            {
              ((StringBuilder)localObject1).append("]C1");
              k = j;
              j = i;
              i = k;
              k = i3;
              i2 = i11;
              break;
            }
            ((StringBuilder)localObject1).append('\035');
            k = j;
            j = i;
            i = k;
            k = i3;
            i2 = i11;
            break;
            k = j;
            j = i;
            i = k;
            k = i3;
            i2 = i11;
            break;
            if ((n == 0) && (i3 != 0))
            {
              n = 1;
              i2 = 0;
              k = j;
              j = i;
              i = k;
              k = i2;
              i2 = i11;
              break;
            }
            if ((n != 0) && (i3 != 0))
            {
              n = 0;
              i2 = 0;
              k = j;
              j = i;
              i = k;
              k = i2;
              i2 = i11;
              break;
            }
            i2 = 1;
            k = j;
            j = i;
            i = k;
            k = i2;
            i2 = i11;
            break;
            i2 = 1;
            k = 100;
            j = i;
            i = k;
            k = i3;
            break;
            k = 100;
            j = i;
            i = k;
            k = i3;
            i2 = i11;
            break;
            k = 99;
            j = i;
            i = k;
            k = i3;
            i2 = i11;
            break;
            k = 1;
          }
        }
        if (i12 < 96)
        {
          if (i3 == n)
            ((StringBuilder)localObject1).append((char)(i12 + 32));
          while (true)
          {
            i2 = 0;
            k = j;
            j = i;
            i = k;
            k = i2;
            i2 = i11;
            break;
            ((StringBuilder)localObject1).append((char)(i12 + 32 + 128));
          }
        }
        if (i12 != 106)
          m = 0;
        k = i;
        switch (i12)
        {
        default:
          k = i;
        case 103:
        case 104:
        case 105:
        case 102:
        case 96:
        case 97:
        case 100:
        case 98:
        case 101:
        case 99:
        case 106:
        }
        while (true)
        {
          i = j;
          j = k;
          k = i3;
          i2 = i11;
          break;
          k = i;
          if (i6 != 0)
          {
            if (((StringBuilder)localObject1).length() == 0)
            {
              ((StringBuilder)localObject1).append("]C1");
              k = j;
              j = i;
              i = k;
              k = i3;
              i2 = i11;
              break;
            }
            ((StringBuilder)localObject1).append('\035');
            k = j;
            j = i;
            i = k;
            k = i3;
            i2 = i11;
            break;
            k = j;
            j = i;
            i = k;
            k = i3;
            i2 = i11;
            break;
            if ((n == 0) && (i3 != 0))
            {
              n = 1;
              i2 = 0;
              k = j;
              j = i;
              i = k;
              k = i2;
              i2 = i11;
              break;
            }
            if ((n != 0) && (i3 != 0))
            {
              n = 0;
              i2 = 0;
              k = j;
              j = i;
              i = k;
              k = i2;
              i2 = i11;
              break;
            }
            i2 = 1;
            k = j;
            j = i;
            i = k;
            k = i2;
            i2 = i11;
            break;
            i2 = 1;
            k = 101;
            j = i;
            i = k;
            k = i3;
            break;
            k = 101;
            j = i;
            i = k;
            k = i3;
            i2 = i11;
            break;
            k = 99;
            j = i;
            i = k;
            k = i3;
            i2 = i11;
            break;
            k = 1;
          }
        }
        if (i12 < 100)
        {
          if (i12 < 10)
            ((StringBuilder)localObject1).append('0');
          ((StringBuilder)localObject1).append(i12);
          k = j;
          j = i;
          i = k;
          k = i3;
          i2 = i11;
          break label640;
        }
        if (i12 != 106)
          m = 0;
        switch (i12)
        {
        case 103:
        case 104:
        case 105:
        default:
          k = m;
          break;
        case 100:
          k = 100;
          j = i;
          i = k;
          k = i3;
          i2 = i11;
          break;
        case 102:
          k = m;
          if (i6 == 0)
            break;
          if (((StringBuilder)localObject1).length() == 0)
          {
            ((StringBuilder)localObject1).append("]C1");
            k = j;
            j = i;
            i = k;
            k = i3;
            i2 = i11;
            break label640;
          }
          ((StringBuilder)localObject1).append('\035');
          k = j;
          j = i;
          i = k;
          k = i3;
          i2 = i11;
          break;
        case 101:
          k = 101;
          j = i;
          i = k;
          k = i3;
          i2 = i11;
          break;
        case 106:
          i = j;
          j = 1;
          k = i3;
          i2 = i11;
          break label640;
        }
      }
      i = parama.d(i1);
      if (!parama.a(i, Math.min(parama.b, (i - k) / 2 + i)))
        throw NotFoundException.a();
      if ((i2 - i5 * i8) % 103 != i8)
        throw ChecksumException.a();
      i = ((StringBuilder)localObject1).length();
      if (i == 0)
        throw NotFoundException.a();
      if ((i > 0) && (m != 0))
      {
        if (j != 99)
          break label2131;
        ((StringBuilder)localObject1).delete(i - 2, i);
      }
      float f3;
      while (true)
      {
        f1 = (localObject2[1] + localObject2[0]) / 2.0F;
        f2 = k;
        f3 = (i1 - k) / 2.0F;
        j = paramMap.size();
        parama = new byte[j];
        i = 0;
        while (i < j)
        {
          parama[i] = ((Byte)paramMap.get(i)).byteValue();
          i += 1;
        }
        label2131: ((StringBuilder)localObject1).delete(i - 1, i);
      }
      paramMap = ((StringBuilder)localObject1).toString();
      Object localObject1 = new o(f1, paramInt);
      Object localObject2 = new o(f2 + f3, paramInt);
      Object localObject3 = com.google.zxing.a.e;
      return new m(paramMap, parama, new o[] { localObject1, localObject2 }, (com.google.zxing.a)localObject3);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.c
 * JD-Core Version:    0.6.2
 */