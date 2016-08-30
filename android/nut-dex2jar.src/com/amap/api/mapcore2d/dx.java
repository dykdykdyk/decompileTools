package com.amap.api.mapcore2d;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

public class dx extends fb
{
  private byte[] a;

  public dx(byte[] paramArrayOfByte)
  {
    this.a = ((byte[])paramArrayOfByte.clone());
  }

  private String e()
  {
    try
    {
      byte[] arrayOfByte1 = dm.a.getBytes("UTF-8");
      byte[] arrayOfByte3 = new byte[arrayOfByte1.length + 50];
      System.arraycopy(this.a, 0, arrayOfByte3, 0, 50);
      System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 50, arrayOfByte1.length);
      return dg.a(arrayOfByte3);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        byte[] arrayOfByte2 = dm.a.getBytes();
    }
  }

  public byte[] a_()
  {
    return this.a;
  }

  public Map<String, String> b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Content-Type", "application/zip");
    localHashMap.put("Content-Length", String.valueOf(this.a.length));
    return localHashMap;
  }

  public Map<String, String> c()
  {
    return null;
  }

  public String d()
  {
    return String.format(dm.b, new Object[] { "1", "1", "1", "open", e() });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.dx
 * JD-Core Version:    0.6.2
 */