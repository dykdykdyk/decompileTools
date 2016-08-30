package com.nut.blehunter.ble;

import android.text.TextUtils;
import android.util.Log;
import com.nut.blehunter.entity.Nut;
import java.math.BigInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class d
{
  private static final String a = d.class.getSimpleName();
  private static final byte[] b = { -1, -1, -1, -1, -1, -1, -1, -1 };
  private static final byte[] c = { 18, 52, 86, 120, -112, -85, -51, -17 };

  public static byte[] a()
  {
    return a(c, c);
  }

  public static byte[] a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramString = null;
      return paramString;
    }
    paramString = paramString.toUpperCase();
    int j = paramString.length() / 2;
    char[] arrayOfChar = paramString.toCharArray();
    byte[] arrayOfByte = new byte[j];
    int i = 0;
    while (true)
    {
      paramString = arrayOfByte;
      if (i >= j)
        break;
      int k = i * 2;
      int m = (byte)"0123456789ABCDEF".indexOf(arrayOfChar[k]);
      arrayOfByte[i] = ((byte)((byte)"0123456789ABCDEF".indexOf(arrayOfChar[(k + 1)]) | m << 4));
      i += 1;
    }
  }

  public static byte[] a(String paramString, Nut paramNut, byte[] paramArrayOfByte)
  {
    Object localObject1 = null;
    if (paramNut != null)
    {
      localObject1 = paramNut.d;
      paramNut = paramNut.e;
    }
    while (true)
    {
      return b(paramString, paramArrayOfByte, (String)localObject1, paramNut);
      Object localObject2 = null;
      paramNut = (Nut)localObject1;
      localObject1 = localObject2;
    }
  }

  public static byte[] a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      return null;
    try
    {
      paramString1 = a(b(paramString1), b(paramString2));
      return paramString1;
    }
    catch (Exception paramString1)
    {
      Log.e(a, "getNewPwValue: Exception.");
    }
    return null;
  }

  public static byte[] a(String paramString, byte[] paramArrayOfByte)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramArrayOfByte == null) || (paramArrayOfByte.length == 0) || (paramArrayOfByte.length != 4))
    {
      Log.e(a, "getAuthValue(2): params is null");
      return null;
    }
    byte[] arrayOfByte = new byte[6];
    paramString = paramString.split(":");
    int i = 0;
    while (i < paramString.length)
    {
      arrayOfByte[i] = ((byte)Integer.parseInt(paramString[i], 16));
      i += 1;
    }
    return a(arrayOfByte, paramArrayOfByte, c, c);
  }

  public static byte[] a(String paramString1, byte[] paramArrayOfByte, String paramString2, String paramString3)
  {
    return b(paramString1, paramArrayOfByte, paramString2, paramString3);
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    int i = 4;
    byte[] arrayOfByte = new byte[4];
    if (paramArrayOfByte.length <= 4)
      i = paramArrayOfByte.length;
    System.arraycopy(paramArrayOfByte, 1, arrayOfByte, 0, i);
    return arrayOfByte;
  }

  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = 8;
    byte[] arrayOfByte = new byte[16];
    paramArrayOfByte1 = b(paramArrayOfByte1);
    paramArrayOfByte2 = b(paramArrayOfByte2);
    try
    {
      if (paramArrayOfByte2.length <= 8);
      for (int i = paramArrayOfByte2.length; ; i = 8)
      {
        System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, 0, i);
        i = j;
        if (paramArrayOfByte1.length <= 8)
          i = paramArrayOfByte1.length;
        System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 8, i);
        return arrayOfByte;
      }
    }
    catch (Exception paramArrayOfByte1)
    {
      Log.e(a, "toBTEndian: Exception.");
    }
    return arrayOfByte;
  }

  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4)
  {
    BigInteger localBigInteger = new BigInteger(1, b(paramArrayOfByte2));
    paramArrayOfByte1 = new BigInteger(1, paramArrayOfByte1);
    paramArrayOfByte2 = new BigInteger(1, paramArrayOfByte3);
    localBigInteger = paramArrayOfByte1.add(localBigInteger);
    paramArrayOfByte3 = new BigInteger(1, paramArrayOfByte4);
    if (paramArrayOfByte3.remainder(new BigInteger(1, new byte[] { 2 })).compareTo(BigInteger.ONE) == 0)
    {
      paramArrayOfByte1 = paramArrayOfByte3;
      paramArrayOfByte3 = new BigInteger(1, b).subtract(paramArrayOfByte3);
      if (localBigInteger.compareTo(paramArrayOfByte3) != 1)
        break label147;
      paramArrayOfByte2 = paramArrayOfByte2.add(localBigInteger.subtract(paramArrayOfByte3));
    }
    label147: 
    while (true)
    {
      paramArrayOfByte1 = localBigInteger.add(paramArrayOfByte1);
      return a(paramArrayOfByte2.toByteArray(), paramArrayOfByte1.toByteArray());
      paramArrayOfByte1 = paramArrayOfByte3.add(paramArrayOfByte3);
      break;
    }
  }

  private static byte[] b(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      Log.e(a, "intStringToBytes: param is null.");
      return null;
    }
    if (Pattern.compile("(?i)[a-z]").matcher(paramString).find())
    {
      Log.e(a, "intStringToBytes: params contain letters.");
      return null;
    }
    try
    {
      long l = Integer.parseInt(paramString);
      int i = (byte)(int)(l & 0xFF);
      int j = (byte)(int)(l >> 8 & 0xFF);
      int k = (byte)(int)(l >> 16 & 0xFF);
      int m = (byte)(int)(l >> 24 & 0xFF);
      int n = (byte)(int)(l >> 32 & 0xFF);
      int i1 = (byte)(int)(l >> 40 & 0xFF);
      int i2 = (byte)(int)(l >> 48 & 0xFF);
      int i3 = (byte)(int)(l >> 56 & 0xFF);
      return new byte[] { i3, i2, i1, n, m, k, j, i };
    }
    catch (NumberFormatException paramString)
    {
      Log.e(a, "intStringToBytes: NumberFormatException.");
    }
    return null;
  }

  private static byte[] b(String paramString1, byte[] paramArrayOfByte, String paramString2, String paramString3)
  {
    if ((TextUtils.isEmpty(paramString3)) || (TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString1)) || (paramArrayOfByte == null) || (paramArrayOfByte.length == 0) || (paramArrayOfByte.length != 4))
      return null;
    byte[] arrayOfByte = new byte[6];
    paramString1 = paramString1.split(":");
    int i = 0;
    while (i < paramString1.length)
    {
      arrayOfByte[i] = ((byte)Integer.parseInt(paramString1[i], 16));
      i += 1;
    }
    if ((paramString2.length() == 16) && (paramString3.length() == 16))
      paramString2 = a(paramString2);
    for (paramString1 = a(paramString3); ; paramString1 = b(paramString3))
    {
      return a(arrayOfByte, paramArrayOfByte, paramString2, paramString1);
      paramString2 = b(paramString2);
    }
  }

  private static byte[] b(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte.length;
    byte[] arrayOfByte = new byte[j];
    int i = 0;
    while (true)
    {
      j -= 1;
      if (j < 0)
        break;
      arrayOfByte[j] = paramArrayOfByte[i];
      i += 1;
    }
    return arrayOfByte;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.d
 * JD-Core Version:    0.6.2
 */