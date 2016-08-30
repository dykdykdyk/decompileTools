package com.baidu.android.pushservice.j;

import android.annotation.SuppressLint;
import java.security.Key;
import java.security.KeyFactory;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public final class f
{
  @SuppressLint({"InlinedApi", "OldTargetApi"})
  public static byte[] a(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    paramString = new PKCS8EncodedKeySpec(b.a(paramString.getBytes()));
    paramString = KeyFactory.getInstance("RSA").generatePrivate(paramString);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(2, paramString);
    return localCipher.doFinal(paramArrayOfByte);
  }

  @SuppressLint({"InlinedApi", "OldTargetApi"})
  public static byte[] a(byte[] paramArrayOfByte, String paramString, int paramInt)
    throws Exception
  {
    paramString = new X509EncodedKeySpec(b.a(paramString.getBytes()));
    Object localObject = KeyFactory.getInstance("RSA").generatePublic(paramString);
    paramString = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    paramString.init(1, (Key)localObject);
    int n = paramInt / 8;
    int k = n - 11;
    int i1 = paramArrayOfByte.length;
    localObject = new byte[(i1 + k - 1) / k * n];
    paramInt = 0;
    int i = 0;
    while (i < i1)
    {
      int m = i1 - i;
      int j = m;
      if (k < m)
        j = k;
      byte[] arrayOfByte = new byte[j];
      System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, j);
      i += j;
      System.arraycopy(paramString.doFinal(arrayOfByte), 0, localObject, paramInt, n);
      paramInt += n;
    }
    return localObject;
  }

  @SuppressLint({"InlinedApi", "OldTargetApi"})
  public static byte[] b(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    paramString = new X509EncodedKeySpec(b.a(paramString.getBytes()));
    paramString = KeyFactory.getInstance("RSA").generatePublic(paramString);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(2, paramString);
    return localCipher.doFinal(paramArrayOfByte);
  }

  @SuppressLint({"InlinedApi", "OldTargetApi"})
  public static byte[] c(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    paramString = new X509EncodedKeySpec(b.a(paramString.getBytes()));
    paramString = KeyFactory.getInstance("RSA").generatePublic(paramString);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(1, paramString);
    return localCipher.doFinal(paramArrayOfByte);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.j.f
 * JD-Core Version:    0.6.2
 */