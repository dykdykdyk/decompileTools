package com.amap.api.maps2d;

import android.content.Context;
import android.os.RemoteException;
import com.amap.api.mapcore2d.dc;

public final class MapsInitializer
{
  private static boolean a = true;
  public static String sdcardDir = "";

  public static boolean getNetworkEnable()
  {
    return a;
  }

  public static String getVersion()
  {
    return "2.8.0";
  }

  public static void initialize(Context paramContext)
    throws RemoteException
  {
    com.amap.api.mapcore2d.ba.a = paramContext.getApplicationContext();
  }

  public static void replaceURL(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.equals("")));
    do
    {
      return;
      com.amap.api.mapcore2d.v.h = paramString1;
      com.amap.api.mapcore2d.v.g = paramString2 + "DIY";
    }
    while (!paramString1.contains("openstreetmap"));
    com.amap.api.mapcore2d.v.c = 19;
  }

  public static void setApiKey(String paramString)
  {
    dc.a(paramString);
  }

  public static void setNetworkEnable(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.MapsInitializer
 * JD-Core Version:    0.6.2
 */