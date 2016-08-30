package com.sina.weibo.sdk.d;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public final class a
{
  public static String a(String paramString)
  {
    try
    {
      paramString = h.a(paramString.getBytes());
      Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
      localCipher.init(2, b("Stark"));
      try
      {
        paramString = new String(localCipher.doFinal(paramString), "utf-8");
        return paramString;
      }
      catch (Exception paramString)
      {
        i.c("Decrypt", paramString.getMessage());
        return null;
      }
    }
    catch (Exception paramString)
    {
      i.c("Decrypt", paramString.getMessage());
    }
    return null;
  }

  private static Key b(String paramString)
  {
    try
    {
      paramString = j.a(paramString).substring(2, 18);
      if (paramString == null)
      {
        i.e("Decrypt", "Key为空null");
        return null;
      }
      if (paramString.length() != 16)
      {
        i.e("Decrypt", "Key长度不是16位");
        return null;
      }
    }
    catch (Exception paramString)
    {
      i.c("generateKey", paramString.getMessage());
      return null;
    }
    paramString = new SecretKeySpec(paramString.getBytes("utf-8"), "AES");
    return paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.a
 * JD-Core Version:    0.6.2
 */