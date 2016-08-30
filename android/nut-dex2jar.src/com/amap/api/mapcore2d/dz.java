package com.amap.api.mapcore2d;

import java.text.SimpleDateFormat;
import java.util.Date;

public class dz
{
  public static String a(long paramLong)
  {
    try
    {
      String str = new SimpleDateFormat("yyyyMMdd HH:mm:ss:SSS").format(new Date(paramLong));
      return str;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }

  static String a(Throwable paramThrowable)
  {
    paramThrowable = dj.a(paramThrowable);
    if (paramThrowable != null)
      return paramThrowable.replaceAll("\n", "<br/>");
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.dz
 * JD-Core Version:    0.6.2
 */