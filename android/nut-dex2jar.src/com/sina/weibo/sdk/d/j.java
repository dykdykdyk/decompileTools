package com.sina.weibo.sdk.d;

import java.security.MessageDigest;

public final class j
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };

  public static String a(String paramString)
  {
    try
    {
      paramString = a(paramString.getBytes());
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }

  public static String a(byte[] paramArrayOfByte)
  {
    int i = 0;
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramArrayOfByte);
      paramArrayOfByte = ((MessageDigest)localObject).digest();
      localObject = new char[32];
      int j = 0;
      while (true)
      {
        if (i >= 16)
          return new String((char[])localObject);
        int k = paramArrayOfByte[i];
        int m = j + 1;
        localObject[j] = a[(k >>> 4 & 0xF)];
        j = m + 1;
        localObject[m] = a[(k & 0xF)];
        i += 1;
      }
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.j
 * JD-Core Version:    0.6.2
 */