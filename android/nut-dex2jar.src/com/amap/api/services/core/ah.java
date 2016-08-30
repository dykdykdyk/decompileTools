package com.amap.api.services.core;

public class ah
{
  private static int a = 4;

  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1.length == 0)
      return paramArrayOfByte1;
    int j = paramArrayOfByte1.length;
    int k = a;
    int m = a;
    byte[] arrayOfByte = new byte[(j / a + 1) * a];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
    int i = j;
    while (i < arrayOfByte.length)
    {
      arrayOfByte[i] = ((byte)(k - j % m));
      i += 1;
    }
    return a(a(a(arrayOfByte, true), a(paramArrayOfByte2, false)), false);
  }

  private static byte[] a(int[] paramArrayOfInt, boolean paramBoolean)
  {
    int j = paramArrayOfInt.length << 2;
    int i;
    if (paramBoolean)
    {
      int k = paramArrayOfInt[(paramArrayOfInt.length - 1)];
      i = k;
      if (k > j)
        return null;
    }
    else
    {
      i = j;
    }
    byte[] arrayOfByte = new byte[i];
    j = 0;
    while (j < i)
    {
      arrayOfByte[j] = ((byte)(paramArrayOfInt[(j >>> 2)] >>> ((j & 0x3) << 3) & 0xFF));
      j += 1;
    }
    return arrayOfByte;
  }

  private static int[] a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    int[] arrayOfInt = new int[paramArrayOfByte.length >>> 2];
    int j = paramArrayOfByte.length;
    int i = 0;
    while (i < j)
    {
      int k = i >>> 2;
      arrayOfInt[k] |= (paramArrayOfByte[i] & 0xFF) << ((i & 0x3) << 3);
      i += 1;
    }
    return arrayOfInt;
  }

  public static int[] a(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i1 = paramArrayOfInt1.length - 1;
    if (i1 <= 0);
    while (true)
    {
      return paramArrayOfInt1;
      int[] arrayOfInt = paramArrayOfInt2;
      if (paramArrayOfInt2.length < 4)
      {
        arrayOfInt = new int[4];
        System.arraycopy(paramArrayOfInt2, 0, arrayOfInt, 0, paramArrayOfInt2.length);
      }
      int i = paramArrayOfInt1[i1];
      int j = 52 / (i1 + 1);
      int k = 0;
      j += 6;
      while (j > 0)
      {
        int m = k - 1640531527;
        int i2 = m >>> 2 & 0x3;
        int n = 0;
        k = i;
        i = n;
        while (i < i1)
        {
          n = paramArrayOfInt1[(i + 1)];
          i3 = paramArrayOfInt1[i];
          k = ((k ^ arrayOfInt[(i & 0x3 ^ i2)]) + (n ^ m) ^ (k >>> 5 ^ n << 2) + (n >>> 3 ^ k << 4)) + i3;
          paramArrayOfInt1[i] = k;
          i += 1;
        }
        n = paramArrayOfInt1[0];
        int i3 = paramArrayOfInt1[i1];
        i = ((arrayOfInt[(i & 0x3 ^ i2)] ^ k) + (n ^ m) ^ (k >>> 5 ^ n << 2) + (n >>> 3 ^ k << 4)) + i3;
        paramArrayOfInt1[i1] = i;
        j -= 1;
        k = m;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ah
 * JD-Core Version:    0.6.2
 */