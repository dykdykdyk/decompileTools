package com.tencent.wxop.stat.b;

public class h
{
  static
  {
    if (!h.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    j localj = new j(new byte[i * 3 / 4]);
    if (localj.c == 6)
      i = 0;
    while (i == 0)
    {
      throw new IllegalArgumentException("bad base-64");
      int i3 = i + 0;
      int j = localj.c;
      int k = localj.d;
      byte[] arrayOfByte = localj.a;
      int[] arrayOfInt = localj.e;
      i = 0;
      int m = 0;
      label81: int i1 = m;
      int i2 = k;
      if (i < i3)
      {
        int n = m;
        i1 = k;
        i2 = i;
        if (j == 0)
        {
          n = i;
          for (i = k; n + 4 <= i3; i = k)
          {
            k = arrayOfInt[(paramArrayOfByte[n] & 0xFF)] << 18 | arrayOfInt[(paramArrayOfByte[(n + 1)] & 0xFF)] << 12 | arrayOfInt[(paramArrayOfByte[(n + 2)] & 0xFF)] << 6 | arrayOfInt[(paramArrayOfByte[(n + 3)] & 0xFF)];
            i = k;
            if (k < 0)
              break;
            arrayOfByte[(m + 2)] = ((byte)k);
            arrayOfByte[(m + 1)] = ((byte)(k >> 8));
            arrayOfByte[m] = ((byte)(k >> 16));
            m += 3;
            n += 4;
          }
          i1 = m;
          i2 = i;
          if (n < i3)
          {
            i2 = n;
            i1 = i;
            n = m;
          }
        }
        else
        {
          i = i2 + 1;
          k = arrayOfInt[(paramArrayOfByte[i2] & 0xFF)];
          switch (j)
          {
          default:
          case 0:
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          }
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      m = n;
                      k = i1;
                      break;
                      if (k >= 0)
                      {
                        j += 1;
                        m = n;
                        break;
                      }
                    }
                    while (k == -1);
                    localj.c = 6;
                    i = 0;
                    break;
                    if (k >= 0)
                    {
                      k = i1 << 6 | k;
                      j += 1;
                      m = n;
                      break label81;
                    }
                  }
                  while (k == -1);
                  localj.c = 6;
                  i = 0;
                  break;
                  if (k >= 0)
                  {
                    k = i1 << 6 | k;
                    j += 1;
                    m = n;
                    break label81;
                  }
                  if (k == -2)
                  {
                    arrayOfByte[n] = ((byte)(i1 >> 4));
                    j = 4;
                    m = n + 1;
                    k = i1;
                    break label81;
                  }
                }
                while (k == -1);
                localj.c = 6;
                i = 0;
                break;
                if (k >= 0)
                {
                  k = i1 << 6 | k;
                  arrayOfByte[(n + 2)] = ((byte)k);
                  arrayOfByte[(n + 1)] = ((byte)(k >> 8));
                  arrayOfByte[n] = ((byte)(k >> 16));
                  m = n + 3;
                  j = 0;
                  break label81;
                }
                if (k == -2)
                {
                  arrayOfByte[(n + 1)] = ((byte)(i1 >> 2));
                  arrayOfByte[n] = ((byte)(i1 >> 10));
                  m = n + 2;
                  j = 5;
                  k = i1;
                  break label81;
                }
              }
              while (k == -1);
              localj.c = 6;
              i = 0;
              break;
              if (k == -2)
              {
                j += 1;
                m = n;
                k = i1;
                break label81;
              }
            }
            while (k == -1);
            localj.c = 6;
            i = 0;
            break;
          }
          while (k == -1);
          localj.c = 6;
          i = 0;
        }
      }
      else
      {
        i = i1;
        switch (j)
        {
        default:
          i = i1;
        case 0:
        case 1:
        case 2:
        case 3:
          while (true)
          {
            localj.c = j;
            localj.b = i;
            i = 1;
            break;
            localj.c = 6;
            i = 0;
            break;
            arrayOfByte[i1] = ((byte)(i2 >> 4));
            i = i1 + 1;
            continue;
            k = i1 + 1;
            arrayOfByte[i1] = ((byte)(i2 >> 10));
            i = k + 1;
            arrayOfByte[k] = ((byte)(i2 >> 2));
          }
        case 4:
        }
        localj.c = 6;
        i = 0;
      }
    }
    if (localj.b == localj.a.length)
      return localj.a;
    paramArrayOfByte = new byte[localj.b];
    System.arraycopy(localj.a, 0, paramArrayOfByte, 0, localj.b);
    return paramArrayOfByte;
  }

  public static byte[] b(byte[] paramArrayOfByte)
  {
    int n = paramArrayOfByte.length;
    k localk = new k();
    int j = n / 3 * 4;
    int i;
    int i1;
    int k;
    label78: byte[] arrayOfByte1;
    byte[] arrayOfByte2;
    int m;
    int i3;
    if (localk.f)
    {
      i = j;
      if (n % 3 > 0)
        i = j + 4;
      i1 = i;
      if (localk.g)
      {
        i1 = i;
        if (n > 0)
        {
          k = (n - 1) / 57;
          if (!localk.h)
            break label487;
          j = 2;
          i1 = i + j * (k + 1);
        }
      }
      localk.a = new byte[i1];
      arrayOfByte1 = localk.i;
      arrayOfByte2 = localk.a;
      m = 0;
      k = localk.e;
      i = 0;
      j = 0;
      i3 = n + 0;
      n = -1;
      switch (localk.d)
      {
      default:
        i = n;
        label167: if (i != -1)
        {
          arrayOfByte2[0] = arrayOfByte1[(i >> 18 & 0x3F)];
          arrayOfByte2[1] = arrayOfByte1[(i >> 12 & 0x3F)];
          arrayOfByte2[2] = arrayOfByte1[(i >> 6 & 0x3F)];
          m = 4;
          arrayOfByte2[3] = arrayOfByte1[(i & 0x3F)];
          k -= 1;
          if (k == 0)
          {
            i = m;
            if (localk.h)
            {
              i = 5;
              arrayOfByte2[4] = 13;
            }
            m = i + 1;
            arrayOfByte2[i] = 10;
            k = 19;
            i = m;
          }
        }
        break;
      case 0:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      label272: if (j + 3 <= i3)
      {
        m = (paramArrayOfByte[j] & 0xFF) << 16 | (paramArrayOfByte[(j + 1)] & 0xFF) << 8 | paramArrayOfByte[(j + 2)] & 0xFF;
        arrayOfByte2[i] = arrayOfByte1[(m >> 18 & 0x3F)];
        arrayOfByte2[(i + 1)] = arrayOfByte1[(m >> 12 & 0x3F)];
        arrayOfByte2[(i + 2)] = arrayOfByte1[(m >> 6 & 0x3F)];
        arrayOfByte2[(i + 3)] = arrayOfByte1[(m & 0x3F)];
        j += 3;
        i += 4;
        k -= 1;
        if (k != 0)
          break label1255;
        if (!localk.h)
          break label1252;
        k = i + 1;
        arrayOfByte2[i] = 13;
        i = k;
      }
      label913: label1095: label1249: label1252: 
      while (true)
      {
        k = i + 1;
        arrayOfByte2[i] = 10;
        m = 19;
        i = k;
        k = m;
        break label272;
        i = j;
        switch (n % 3)
        {
        case 0:
        default:
          i = j;
          break;
        case 1:
          i = j + 2;
          break;
        case 2:
          i = j + 3;
          break;
          label487: j = 1;
          break label78;
          n = -1;
          j = i;
          i = n;
          break label167;
          i = n;
          if (2 > i3)
            break label167;
          i = localk.c[0];
          n = paramArrayOfByte[0];
          j = 2;
          int i2 = paramArrayOfByte[1];
          localk.d = 0;
          i = (i & 0xFF) << 16 | (n & 0xFF) << 8 | i2 & 0xFF;
          break label167;
          i = n;
          if (i3 <= 0)
            break label167;
          i = localk.c[0];
          n = localk.c[1];
          j = 1;
          i = (i & 0xFF) << 16 | (n & 0xFF) << 8 | paramArrayOfByte[0] & 0xFF;
          localk.d = 0;
          break label167;
          if (j - localk.d == i3 - 1)
          {
            if (localk.d > 0)
            {
              paramArrayOfByte = localk.c;
              m = 1;
              n = paramArrayOfByte[0];
            }
            while (true)
            {
              n = (n & 0xFF) << 4;
              localk.d -= m;
              i2 = i + 1;
              arrayOfByte2[i] = arrayOfByte1[(n >> 6 & 0x3F)];
              m = i2 + 1;
              arrayOfByte2[i2] = arrayOfByte1[(n & 0x3F)];
              i = m;
              if (localk.f)
              {
                n = m + 1;
                arrayOfByte2[m] = 61;
                i = n + 1;
                arrayOfByte2[n] = 61;
              }
              m = i;
              if (localk.g)
              {
                m = i;
                if (localk.h)
                {
                  arrayOfByte2[i] = 13;
                  m = i + 1;
                }
                arrayOfByte2[m] = 10;
                m += 1;
              }
              n = j;
              if ((k.j) || (localk.d == 0))
                break;
              throw new AssertionError();
              n = paramArrayOfByte[j];
              j += 1;
              m = 0;
            }
          }
          if (j - localk.d == i3 - 2)
            if (localk.d > 1)
            {
              byte[] arrayOfByte3 = localk.c;
              m = 1;
              n = arrayOfByte3[0];
              label889: if (localk.d <= 0)
                break label1095;
              i2 = localk.c[m];
              m += 1;
              n = (i2 & 0xFF) << 2 | (n & 0xFF) << 10;
              localk.d -= m;
              m = i + 1;
              arrayOfByte2[i] = arrayOfByte1[(n >> 12 & 0x3F)];
              i2 = m + 1;
              arrayOfByte2[m] = arrayOfByte1[(n >> 6 & 0x3F)];
              i = i2 + 1;
              arrayOfByte2[i2] = arrayOfByte1[(n & 0x3F)];
              if (!localk.f)
                break label1249;
              m = i + 1;
              arrayOfByte2[i] = 61;
              i = m;
            }
          while (true)
          {
            m = i;
            if (localk.g)
            {
              m = i;
              if (localk.h)
              {
                arrayOfByte2[i] = 13;
                m = i + 1;
              }
              arrayOfByte2[m] = 10;
              m += 1;
            }
            n = j;
            break;
            n = paramArrayOfByte[j];
            j += 1;
            m = 0;
            break label889;
            i2 = paramArrayOfByte[j];
            j += 1;
            break label913;
            n = j;
            m = i;
            if (!localk.g)
              break;
            n = j;
            m = i;
            if (i <= 0)
              break;
            n = j;
            m = i;
            if (k == 19)
              break;
            if (localk.h)
            {
              m = i + 1;
              arrayOfByte2[i] = 13;
              i = m;
            }
            while (true)
            {
              m = i + 1;
              arrayOfByte2[i] = 10;
              n = j;
              break;
              if ((!k.j) && (n != i3))
                throw new AssertionError();
              localk.b = m;
              localk.e = k;
              if ((!a) && (localk.b != i1))
                throw new AssertionError();
              return localk.a;
            }
          }
        }
      }
      label1255: continue;
      i = 4;
      continue;
      i = m;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.b.h
 * JD-Core Version:    0.6.2
 */