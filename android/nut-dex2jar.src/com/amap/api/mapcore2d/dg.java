package com.amap.api.mapcore2d;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class dg
{
  public static String a(String paramString)
  {
    if (paramString == null)
      return null;
    return dj.c(c(paramString));
  }

  public static String a(byte[] paramArrayOfByte)
  {
    return dj.c(b(paramArrayOfByte));
  }

  public static byte[] a(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      paramString = MessageDigest.getInstance(paramString);
      paramString.update(paramArrayOfByte);
      paramArrayOfByte = paramString.digest();
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      dq.a(paramArrayOfByte, "MD5", "getMd5Bytes");
      return null;
    }
    catch (Throwable paramArrayOfByte)
    {
      dq.a(paramArrayOfByte, "MD5", "getMd5Bytes1");
    }
    return null;
  }

  public static String b(String paramString)
  {
    return dj.d(d(paramString));
  }

  private static byte[] b(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, "MD5");
  }

  public static byte[] c(String paramString)
  {
    try
    {
      paramString = e(paramString);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      dq.a(paramString, "MD5", "getMd5Bytes");
      return new byte[0];
    }
    catch (UnsupportedEncodingException paramString)
    {
      while (true)
        dq.a(paramString, "MD5", "getMd5Bytes");
    }
    catch (Throwable paramString)
    {
      while (true)
        dq.a(paramString, "MD5", "getMd5Bytes");
    }
  }

  private static byte[] d(String paramString)
  {
    try
    {
      paramString = e(paramString);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
      return new byte[0];
    }
    catch (UnsupportedEncodingException paramString)
    {
      while (true)
        paramString.printStackTrace();
    }
    catch (Throwable paramString)
    {
      while (true)
        paramString.printStackTrace();
    }
  }

  private static byte[] e(String paramString)
    throws NoSuchAlgorithmException, UnsupportedEncodingException
  {
    if (paramString == null)
      return null;
    MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
    localMessageDigest.update(paramString.getBytes("UTF-8"));
    return localMessageDigest.digest();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.dg
 * JD-Core Version:    0.6.2
 */