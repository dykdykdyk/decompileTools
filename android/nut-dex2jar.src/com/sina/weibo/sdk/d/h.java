package com.sina.weibo.sdk.d;

public final class h
{
  private static char[] a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".toCharArray();
  private static byte[] b = new byte[256];

  static
  {
    int i = 0;
    if (i >= 256)
    {
      i = 65;
      label28: if (i <= 90)
        break label82;
      i = 97;
      label37: if (i <= 122)
        break label99;
      i = 48;
    }
    while (true)
    {
      if (i > 57)
      {
        b[43] = 62;
        b[47] = 63;
        return;
        b[i] = -1;
        i += 1;
        break;
        label82: b[i] = ((byte)(i - 65));
        i += 1;
        break label28;
        label99: b[i] = ((byte)(i + 26 - 97));
        i += 1;
        break label37;
      }
      b[i] = ((byte)(i + 52 - 48));
      i += 1;
    }
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    int m = 0;
    int j = (paramArrayOfByte.length + 3) / 4 * 3;
    int i = j;
    if (paramArrayOfByte.length > 0)
    {
      i = j;
      if (paramArrayOfByte[(paramArrayOfByte.length - 1)] == 61)
        i = j - 1;
    }
    j = i;
    if (paramArrayOfByte.length > 1)
    {
      j = i;
      if (paramArrayOfByte[(paramArrayOfByte.length - 2)] == 61)
        j = i - 1;
    }
    byte[] arrayOfByte = new byte[j];
    int k = 0;
    int n = 0;
    int i1 = 0;
    if (k >= paramArrayOfByte.length)
    {
      if (m != arrayOfByte.length)
        throw new RuntimeException("miscalculated data length!");
    }
    else
    {
      int i3 = b[(paramArrayOfByte[k] & 0xFF)];
      i2 = m;
      i = n;
      j = i1;
      if (i3 >= 0)
      {
        j = i1 + 6;
        i = n << 6 | i3;
        if (j < 8)
          break label191;
        j -= 8;
        arrayOfByte[m] = ((byte)(i >> j & 0xFF));
      }
    }
    label191: for (int i2 = m + 1; ; i2 = m)
    {
      k += 1;
      m = i2;
      n = i;
      i1 = j;
      break;
      return arrayOfByte;
    }
  }

  public static byte[] b(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[(paramArrayOfByte.length + 2) / 3 * 4];
    int i = 0;
    int j = 0;
    if (j >= paramArrayOfByte.length)
      return arrayOfByte;
    int m = (paramArrayOfByte[j] & 0xFF) << 8;
    if (j + 1 < paramArrayOfByte.length)
      m |= paramArrayOfByte[(j + 1)] & 0xFF;
    for (int k = 1; ; k = 0)
    {
      m <<= 8;
      if (j + 2 < paramArrayOfByte.length)
        m |= paramArrayOfByte[(j + 2)] & 0xFF;
      for (int n = 1; ; n = 0)
      {
        char[] arrayOfChar = a;
        if (n != 0)
        {
          n = m & 0x3F;
          label110: arrayOfByte[(i + 3)] = ((byte)arrayOfChar[n]);
          m >>= 6;
          arrayOfChar = a;
          if (k == 0)
            break label212;
        }
        label212: for (k = m & 0x3F; ; k = 64)
        {
          arrayOfByte[(i + 2)] = ((byte)arrayOfChar[k]);
          k = m >> 6;
          arrayOfByte[(i + 1)] = ((byte)a[(k & 0x3F)]);
          arrayOfByte[(i + 0)] = ((byte)a[(k >> 6 & 0x3F)]);
          j += 3;
          i += 4;
          break;
          n = 64;
          break label110;
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.h
 * JD-Core Version:    0.6.2
 */