package com.baidu.android.pushservice.j;

import java.io.UnsupportedEncodingException;

public final class b
{
  private static final byte[] a = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };

  public static String a(byte[] paramArrayOfByte, String paramString)
    throws UnsupportedEncodingException
  {
    int i = paramArrayOfByte.length * 4 / 3;
    byte[] arrayOfByte = new byte[i + (i / 76 + 3)];
    int n = paramArrayOfByte.length - paramArrayOfByte.length % 3;
    int k = 0;
    int j = 0;
    i = 0;
    if (j < n)
    {
      int m = i + 1;
      arrayOfByte[i] = a[((paramArrayOfByte[j] & 0xFF) >> 2)];
      i = m + 1;
      arrayOfByte[m] = a[((paramArrayOfByte[j] & 0x3) << 4 | (paramArrayOfByte[(j + 1)] & 0xFF) >> 4)];
      m = i + 1;
      arrayOfByte[i] = a[((paramArrayOfByte[(j + 1)] & 0xF) << 2 | (paramArrayOfByte[(j + 2)] & 0xFF) >> 6)];
      i = m + 1;
      arrayOfByte[m] = a[(paramArrayOfByte[(j + 2)] & 0x3F)];
      if (((i - k) % 76 != 0) || (i == 0))
        break label389;
      m = i + 1;
      arrayOfByte[i] = 10;
      k += 1;
      i = m;
    }
    label389: 
    while (true)
    {
      j += 3;
      break;
      switch (paramArrayOfByte.length % 3)
      {
      default:
      case 1:
      case 2:
      }
      while (true)
      {
        return new String(arrayOfByte, 0, i, paramString);
        j = i + 1;
        arrayOfByte[i] = a[((paramArrayOfByte[n] & 0xFF) >> 2)];
        i = j + 1;
        arrayOfByte[j] = a[((paramArrayOfByte[n] & 0x3) << 4)];
        j = i + 1;
        arrayOfByte[i] = 61;
        i = j + 1;
        arrayOfByte[j] = 61;
        continue;
        j = i + 1;
        arrayOfByte[i] = a[((paramArrayOfByte[n] & 0xFF) >> 2)];
        i = j + 1;
        arrayOfByte[j] = a[((paramArrayOfByte[n] & 0x3) << 4 | (paramArrayOfByte[(n + 1)] & 0xFF) >> 4)];
        j = i + 1;
        arrayOfByte[i] = a[((paramArrayOfByte[(n + 1)] & 0xF) << 2)];
        i = j + 1;
        arrayOfByte[j] = 61;
      }
    }
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, paramArrayOfByte.length);
  }

  public static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt / 4 * 3;
    if (i == 0)
      return new byte[0];
    byte[] arrayOfByte = new byte[i];
    int m = 0;
    int n = paramInt;
    while (true)
    {
      i = paramArrayOfByte[(n - 1)];
      paramInt = m;
      if (i != 10)
      {
        paramInt = m;
        if (i != 13)
        {
          paramInt = m;
          if (i != 32)
          {
            paramInt = m;
            if (i != 9)
            {
              if (i != 61)
                break;
              paramInt = m + 1;
            }
          }
        }
      }
      n -= 1;
      m = paramInt;
    }
    int i1 = 0;
    int k = 0;
    int j = 0;
    paramInt = 0;
    if (i1 < n)
    {
      i = paramArrayOfByte[i1];
      if ((i == 10) || (i == 13) || (i == 32) || (i == 9))
        break label388;
      if ((i >= 65) && (i <= 90))
      {
        i -= 65;
        label154: k = k << 6 | (byte)i;
        if (j % 4 != 3)
          break label385;
        i = paramInt + 1;
        arrayOfByte[paramInt] = ((byte)((0xFF0000 & k) >> 16));
        int i2 = i + 1;
        arrayOfByte[i] = ((byte)((0xFF00 & k) >> 8));
        paramInt = i2 + 1;
        arrayOfByte[i2] = ((byte)(k & 0xFF));
        label223: j += 1;
        i = paramInt;
      }
    }
    for (paramInt = k; ; paramInt = k)
    {
      i1 += 1;
      k = paramInt;
      paramInt = i;
      break;
      if ((i >= 97) && (i <= 122))
      {
        i -= 71;
        break label154;
      }
      if ((i >= 48) && (i <= 57))
      {
        i += 4;
        break label154;
      }
      if (i == 43)
      {
        i = 62;
        break label154;
      }
      if (i == 47)
      {
        i = 63;
        break label154;
      }
      return null;
      i = paramInt;
      if (m > 0)
      {
        j = k << m * 6;
        i = paramInt + 1;
        arrayOfByte[paramInt] = ((byte)((0xFF0000 & j) >> 16));
        if (m != 1)
          break label382;
        paramInt = i + 1;
        arrayOfByte[i] = ((byte)((0xFF00 & j) >> 8));
        i = paramInt;
      }
      label382: 
      while (true)
      {
        paramArrayOfByte = new byte[i];
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, 0, i);
        return paramArrayOfByte;
      }
      label385: break label223;
      label388: i = paramInt;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.j.b
 * JD-Core Version:    0.6.2
 */