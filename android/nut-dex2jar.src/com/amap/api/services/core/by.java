package com.amap.api.services.core;

import java.io.UnsupportedEncodingException;

class by
{
  static String a(String paramString)
  {
    if (paramString == null)
      return null;
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      paramString = arrayOfByte;
      paramString = ao.a(paramString);
      return (char)(paramString.length() % 26 + 65) + paramString;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        paramString = paramString.getBytes();
    }
  }

  static String b(String paramString)
  {
    if (paramString.length() < 2)
      return "";
    return ao.a(paramString.substring(1));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.by
 * JD-Core Version:    0.6.2
 */