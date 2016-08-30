package com.amap.api.services.core;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

public class bf extends cj
{
  private byte[] a;

  public bf(byte[] paramArrayOfByte)
  {
    this.a = ((byte[])paramArrayOfByte.clone());
  }

  private String a()
  {
    try
    {
      byte[] arrayOfByte1 = au.a.getBytes("UTF-8");
      byte[] arrayOfByte3 = new byte[arrayOfByte1.length + 50];
      System.arraycopy(this.a, 0, arrayOfByte3, 0, 50);
      System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 50, arrayOfByte1.length);
      return ap.a(arrayOfByte3);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        byte[] arrayOfByte2 = au.a.getBytes();
    }
  }

  public Map<String, String> b()
  {
    return null;
  }

  public Map<String, String> c()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Content-Type", "application/zip");
    localHashMap.put("Content-Length", String.valueOf(this.a.length));
    return localHashMap;
  }

  public byte[] f()
  {
    return this.a;
  }

  public String g()
  {
    return String.format(au.b, new Object[] { "1", "1", "1", "open", a() });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bf
 * JD-Core Version:    0.6.2
 */