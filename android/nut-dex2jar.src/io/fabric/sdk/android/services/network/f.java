package io.fabric.sdk.android.services.network;

public final class f
{
  private static final byte[] a = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };

  public static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte == null)
      throw new NullPointerException("Cannot serialize a null array.");
    if (paramInt < 0)
      throw new IllegalArgumentException("Cannot have length offset: " + paramInt);
    if (paramInt + 0 > paramArrayOfByte.length)
      throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", new Object[] { Integer.valueOf(0), Integer.valueOf(paramInt), Integer.valueOf(paramArrayOfByte.length) }));
    int j = paramInt / 3;
    if (paramInt % 3 > 0);
    byte[] arrayOfByte;
    for (int i = 4; ; i = 0)
    {
      arrayOfByte = new byte[i + j * 4];
      i = 0;
      j = 0;
      while (j < paramInt - 2)
      {
        a(paramArrayOfByte, j + 0, 3, arrayOfByte, i);
        j += 3;
        i += 4;
      }
    }
    int k = i;
    if (j < paramInt)
    {
      a(paramArrayOfByte, j + 0, paramInt - j, arrayOfByte, i);
      k = i + 4;
    }
    if (k <= arrayOfByte.length - 1)
    {
      paramArrayOfByte = new byte[k];
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, 0, k);
      return paramArrayOfByte;
    }
    return arrayOfByte;
  }

  private static byte[] a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    int k = 0;
    byte[] arrayOfByte = a;
    int i;
    if (paramInt2 > 0)
    {
      i = paramArrayOfByte1[paramInt1] << 24 >>> 8;
      label23: if (paramInt2 <= 1)
        break label104;
    }
    label104: for (int j = paramArrayOfByte1[(paramInt1 + 1)] << 24 >>> 16; ; j = 0)
    {
      if (paramInt2 > 2)
        k = paramArrayOfByte1[(paramInt1 + 2)] << 24 >>> 24;
      paramInt1 = k | (j | i);
      switch (paramInt2)
      {
      default:
        return paramArrayOfByte2;
        i = 0;
        break label23;
      case 3:
      case 2:
      case 1:
      }
    }
    paramArrayOfByte2[paramInt3] = arrayOfByte[(paramInt1 >>> 18)];
    paramArrayOfByte2[(paramInt3 + 1)] = arrayOfByte[(paramInt1 >>> 12 & 0x3F)];
    paramArrayOfByte2[(paramInt3 + 2)] = arrayOfByte[(paramInt1 >>> 6 & 0x3F)];
    paramArrayOfByte2[(paramInt3 + 3)] = arrayOfByte[(paramInt1 & 0x3F)];
    return paramArrayOfByte2;
    paramArrayOfByte2[paramInt3] = arrayOfByte[(paramInt1 >>> 18)];
    paramArrayOfByte2[(paramInt3 + 1)] = arrayOfByte[(paramInt1 >>> 12 & 0x3F)];
    paramArrayOfByte2[(paramInt3 + 2)] = arrayOfByte[(paramInt1 >>> 6 & 0x3F)];
    paramArrayOfByte2[(paramInt3 + 3)] = 61;
    return paramArrayOfByte2;
    paramArrayOfByte2[paramInt3] = arrayOfByte[(paramInt1 >>> 18)];
    paramArrayOfByte2[(paramInt3 + 1)] = arrayOfByte[(paramInt1 >>> 12 & 0x3F)];
    paramArrayOfByte2[(paramInt3 + 2)] = 61;
    paramArrayOfByte2[(paramInt3 + 3)] = 61;
    return paramArrayOfByte2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.f
 * JD-Core Version:    0.6.2
 */