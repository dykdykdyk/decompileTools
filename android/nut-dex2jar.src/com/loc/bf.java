package com.loc;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.spec.PKCS8EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class bf
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final byte[] b = { 0, 1, 1, 2, 3, 5, 8, 13, 8, 7, 6, 5, 4, 3, 2, 1 };
  private static final IvParameterSpec c = new IvParameterSpec(b);

  public static String a(String paramString)
  {
    if (paramString != null)
      try
      {
        if (paramString.length() == 0)
          return null;
        String str = a("SHA1", paramString);
        paramString = a("MD5", str + paramString);
        return paramString;
      }
      catch (Throwable paramString)
      {
        paramString.printStackTrace();
      }
    return null;
  }

  public static String a(String paramString1, String paramString2)
  {
    if (paramString2 == null)
      return null;
    try
    {
      paramString1 = ek.a(paramString2.getBytes("UTF-8"), paramString1);
      int j = paramString1.length;
      paramString2 = new StringBuilder(j * 2);
      int i = 0;
      while (i < j)
      {
        paramString2.append(a[(paramString1[i] >> 4 & 0xF)]);
        paramString2.append(a[(paramString1[i] & 0xF)]);
        i += 1;
      }
      paramString1 = paramString2.toString();
      return paramString1;
    }
    catch (Throwable paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }

  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      Object localObject = new byte[16];
      byte[] arrayOfByte = new byte[paramArrayOfByte.length - 16];
      System.arraycopy(paramArrayOfByte, 0, localObject, 0, 16);
      System.arraycopy(paramArrayOfByte, 16, arrayOfByte, 0, paramArrayOfByte.length - 16);
      paramArrayOfByte = new SecretKeySpec((byte[])localObject, "AES");
      localObject = Cipher.getInstance("AES/CBC/PKCS5Padding");
      ((Cipher)localObject).init(2, paramArrayOfByte, new IvParameterSpec(eq.a()));
      paramArrayOfByte = new String(((Cipher)localObject).doFinal(arrayOfByte), "UTF-8");
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }

  public static byte[] a(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    int i = 0;
    try
    {
      paramString = new PKCS8EncodedKeySpec(ej.a(paramString));
      paramString = KeyFactory.getInstance("RSA").generatePrivate(paramString);
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      localCipher.init(1, paramString);
      int k = paramArrayOfByte.length;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      int j = 0;
      if (k - i > 0)
      {
        if (k - i > 245);
        for (paramString = localCipher.doFinal(paramArrayOfByte, i, 245); ; paramString = localCipher.doFinal(paramArrayOfByte, i, k - i))
        {
          localByteArrayOutputStream.write(paramString, 0, paramString.length);
          j += 1;
          i = j * 245;
          break;
        }
      }
      paramArrayOfByte = localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.close();
      return paramArrayOfByte;
    }
    finally
    {
    }
    throw paramArrayOfByte;
  }

  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(2, new SecretKeySpec(paramArrayOfByte1, "AES"), c);
    return localCipher.doFinal(paramArrayOfByte2);
  }

  private static SecretKeySpec b(String paramString)
  {
    Object localObject = null;
    String str = paramString;
    if (paramString == null)
      str = "";
    paramString = new StringBuffer(16);
    paramString.append(str);
    while (paramString.length() < 16)
      paramString.append("0");
    if (paramString.length() > 16)
      paramString.setLength(16);
    try
    {
      paramString = paramString.toString().getBytes("UTF-8");
      return new SecretKeySpec(paramString, "AES");
    }
    catch (UnsupportedEncodingException paramString)
    {
      while (true)
      {
        paramString.printStackTrace();
        paramString = localObject;
      }
    }
  }

  public static byte[] b(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    int i = 0;
    try
    {
      paramString = new PKCS8EncodedKeySpec(ej.a(paramString));
      paramString = KeyFactory.getInstance("RSA").generatePrivate(paramString);
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      localCipher.init(2, paramString);
      int k = paramArrayOfByte.length;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      int j = 0;
      if (k - i > 0)
      {
        if (k - i > 256);
        for (paramString = localCipher.doFinal(paramArrayOfByte, i, 256); ; paramString = localCipher.doFinal(paramArrayOfByte, i, k - i))
        {
          localByteArrayOutputStream.write(paramString, 0, paramString.length);
          j += 1;
          i = j * 256;
          break;
        }
      }
      paramArrayOfByte = localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.close();
      return paramArrayOfByte;
    }
    finally
    {
    }
    throw paramArrayOfByte;
  }

  public static byte[] c(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = b(paramString);
      IvParameterSpec localIvParameterSpec = new IvParameterSpec(eq.a());
      paramString = Cipher.getInstance("AES/CBC/PKCS5Padding");
      try
      {
        paramString.init(1, localSecretKeySpec, localIvParameterSpec);
        return paramString.doFinal(paramArrayOfByte);
      }
      catch (InvalidAlgorithmParameterException localInvalidAlgorithmParameterException)
      {
        while (true)
          localInvalidAlgorithmParameterException.printStackTrace();
      }
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }

  public static byte[] d(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = b(paramString);
      IvParameterSpec localIvParameterSpec = new IvParameterSpec(eq.a());
      paramString = Cipher.getInstance("AES/CBC/PKCS5Padding");
      try
      {
        paramString.init(2, localSecretKeySpec, localIvParameterSpec);
        return paramString.doFinal(paramArrayOfByte);
      }
      catch (InvalidAlgorithmParameterException localInvalidAlgorithmParameterException)
      {
        while (true)
          localInvalidAlgorithmParameterException.printStackTrace();
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
 * Qualified Name:     com.loc.bf
 * JD-Core Version:    0.6.2
 */