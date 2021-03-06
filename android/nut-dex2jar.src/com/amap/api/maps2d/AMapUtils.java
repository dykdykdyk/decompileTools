package com.amap.api.maps2d;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import com.amap.api.mapcore2d.db;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.NaviPara;
import com.amap.api.maps2d.model.PoiPara;
import com.amap.api.maps2d.model.RoutePara;

public class AMapUtils
{
  public static final int BUS_COMFORT = 4;
  public static final int BUS_MONEY_LITTLE = 1;
  public static final int BUS_NO_SUBWAY = 5;
  public static final int BUS_TIME_FIRST = 0;
  public static final int BUS_TRANSFER_LITTLE = 2;
  public static final int BUS_WALK_LITTLE = 3;
  public static final int DRIVING_AVOID_CONGESTION = 4;
  public static final int DRIVING_DEFAULT = 0;
  public static final int DRIVING_NO_HIGHWAY = 3;
  public static final int DRIVING_NO_HIGHWAY_AVOID_CONGESTION = 6;
  public static final int DRIVING_NO_HIGHWAY_AVOID_SHORT_MONEY = 5;
  public static final int DRIVING_NO_HIGHWAY_SAVE_MONEY_AVOID_CONGESTION = 8;
  public static final int DRIVING_SAVE_MONEY = 1;
  public static final int DRIVING_SAVE_MONEY_AVOID_CONGESTION = 7;
  public static final int DRIVING_SHORT_DISTANCE = 2;

  private static String a(NaviPara paramNaviPara, Context paramContext)
  {
    return String.format("androidamap://navi?sourceApplication=%s&lat=%f&lon=%f&dev=0&style=%d", new Object[] { db.b(paramContext), Double.valueOf(paramNaviPara.getTargetPoint().latitude), Double.valueOf(paramNaviPara.getTargetPoint().longitude), Integer.valueOf(paramNaviPara.getNaviStyle()) });
  }

  private static String a(PoiPara paramPoiPara, Context paramContext)
  {
    String str = String.format("androidamap://arroundpoi?sourceApplication=%s&keywords=%s&dev=0", new Object[] { db.b(paramContext), paramPoiPara.getKeywords() });
    paramContext = str;
    if (paramPoiPara.getCenter() != null)
      paramContext = str + "&lat=" + paramPoiPara.getCenter().latitude + "&lon=" + paramPoiPara.getCenter().longitude;
    return paramContext;
  }

  private static String a(RoutePara paramRoutePara, Context paramContext, int paramInt)
  {
    String str = String.format("androidamap://route?sourceApplication=%s&slat=%f&slon=%f&sname=%s&dlat=%f&dlon=%f&dname=%s&dev=0&t=%d", new Object[] { db.b(paramContext), Double.valueOf(paramRoutePara.getStartPoint().latitude), Double.valueOf(paramRoutePara.getStartPoint().longitude), paramRoutePara.getStartName(), Double.valueOf(paramRoutePara.getEndPoint().latitude), Double.valueOf(paramRoutePara.getEndPoint().longitude), paramRoutePara.getEndName(), Integer.valueOf(paramInt) });
    if (paramInt == 1)
      paramContext = str + "&m=" + paramRoutePara.getTransitRouteStyle();
    do
    {
      return paramContext;
      paramContext = str;
    }
    while (paramInt != 2);
    return str + "&m=" + paramRoutePara.getDrivingRouteStyle();
  }

  private static boolean a(Context paramContext)
  {
    boolean bool = false;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.autonavi.minimap", 0);
      if (paramContext != null)
        bool = true;
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
    }
    return false;
  }

  private static boolean a(RoutePara paramRoutePara)
  {
    return (paramRoutePara.getStartPoint() != null) && (paramRoutePara.getEndPoint() != null) && (paramRoutePara.getStartName() != null) && (paramRoutePara.getStartName().trim().length() > 0) && (paramRoutePara.getEndName() != null) && (paramRoutePara.getEndName().trim().length() > 0);
  }

  private static void b(RoutePara paramRoutePara, Context paramContext, int paramInt)
    throws AMapException
  {
    if (a(paramContext))
    {
      if (a(paramRoutePara))
        try
        {
          Intent localIntent = new Intent("android.intent.action.VIEW");
          localIntent.addFlags(276824064);
          localIntent.addCategory("android.intent.category.DEFAULT");
          localIntent.setData(Uri.parse(a(paramRoutePara, paramContext, paramInt)));
          localIntent.setPackage("com.autonavi.minimap");
          new AMapUtils.a("oan", paramContext).start();
          paramContext.startActivity(localIntent);
          return;
        }
        catch (Throwable paramRoutePara)
        {
          throw new AMapException("移动设备上未安装高德地图或高德地图版本较旧");
        }
      throw new AMapException("非法导航参数");
    }
    throw new AMapException("移动设备上未安装高德地图或高德地图版本较旧");
  }

  public static float calculateArea(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    double d3 = Math.sin(paramLatLng1.latitude * 3.141592653589793D / 180.0D);
    double d4 = Math.sin(paramLatLng2.latitude * 3.141592653589793D / 180.0D);
    double d2 = (paramLatLng2.longitude - paramLatLng1.longitude) / 360.0D;
    double d1 = d2;
    if (d2 < 0.0D)
      d1 = d2 + 1.0D;
    return (float)(d1 * ((d3 - d4) * 255603946697905.53D));
  }

  public static float calculateLineDistance(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    double d4 = paramLatLng1.longitude;
    double d3 = paramLatLng1.latitude;
    double d2 = paramLatLng2.longitude;
    double d1 = paramLatLng2.latitude;
    double d5 = d4 * 0.01745329251994329D;
    double d6 = d3 * 0.01745329251994329D;
    d3 = d2 * 0.01745329251994329D;
    d4 = d1 * 0.01745329251994329D;
    d1 = Math.sin(d5);
    d2 = Math.sin(d6);
    d5 = Math.cos(d5);
    d6 = Math.cos(d6);
    double d7 = Math.sin(d3);
    double d8 = Math.sin(d4);
    d3 = Math.cos(d3);
    d4 = Math.cos(d4);
    paramLatLng1 = new double[3];
    paramLatLng2 = new double[3];
    paramLatLng1[0] = (d5 * d6);
    paramLatLng1[1] = (d6 * d1);
    paramLatLng1[2] = d2;
    paramLatLng2[0] = (d4 * d3);
    paramLatLng2[1] = (d4 * d7);
    paramLatLng2[2] = d8;
    return (float)(Math.asin(Math.sqrt((paramLatLng1[0] - paramLatLng2[0]) * (paramLatLng1[0] - paramLatLng2[0]) + (paramLatLng1[1] - paramLatLng2[1]) * (paramLatLng1[1] - paramLatLng2[1]) + (paramLatLng1[2] - paramLatLng2[2]) * (paramLatLng1[2] - paramLatLng2[2])) / 2.0D) * 12742001.579854401D);
  }

  public static void getLatestAMapApp(Context paramContext)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addFlags(276824064);
      localIntent.addCategory("android.intent.category.DEFAULT");
      localIntent.setData(Uri.parse("http://wap.amap.com/"));
      new AMapUtils.a("glaa", paramContext).start();
      paramContext.startActivity(localIntent);
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  public static void openAMapDrivingRoute(RoutePara paramRoutePara, Context paramContext)
    throws AMapException
  {
    b(paramRoutePara, paramContext, 2);
  }

  public static void openAMapNavi(NaviPara paramNaviPara, Context paramContext)
    throws AMapException
  {
    if (a(paramContext))
    {
      if (paramNaviPara.getTargetPoint() != null)
        try
        {
          Intent localIntent = new Intent("android.intent.action.VIEW");
          localIntent.addFlags(276824064);
          localIntent.addCategory("android.intent.category.DEFAULT");
          localIntent.setData(Uri.parse(a(paramNaviPara, paramContext)));
          localIntent.setPackage("com.autonavi.minimap");
          new AMapUtils.a("oan", paramContext).start();
          paramContext.startActivity(localIntent);
          return;
        }
        catch (Throwable paramNaviPara)
        {
          throw new AMapException("移动设备上未安装高德地图或高德地图版本较旧");
        }
      throw new AMapException("非法导航参数");
    }
    throw new AMapException("移动设备上未安装高德地图或高德地图版本较旧");
  }

  public static void openAMapPoiNearbySearch(PoiPara paramPoiPara, Context paramContext)
    throws AMapException
  {
    if (a(paramContext))
    {
      if ((paramPoiPara.getKeywords() != null) && (paramPoiPara.getKeywords().trim().length() > 0))
        try
        {
          Intent localIntent = new Intent("android.intent.action.VIEW");
          localIntent.addFlags(276824064);
          localIntent.addCategory("android.intent.category.DEFAULT");
          localIntent.setData(Uri.parse(a(paramPoiPara, paramContext)));
          localIntent.setPackage("com.autonavi.minimap");
          new AMapUtils.a("oan", paramContext).start();
          paramContext.startActivity(localIntent);
          return;
        }
        catch (Throwable paramPoiPara)
        {
          throw new AMapException("移动设备上未安装高德地图或高德地图版本较旧");
        }
      throw new AMapException("非法导航参数");
    }
    throw new AMapException("移动设备上未安装高德地图或高德地图版本较旧");
  }

  public static void openAMapTransitRoute(RoutePara paramRoutePara, Context paramContext)
    throws AMapException
  {
    b(paramRoutePara, paramContext, 1);
  }

  public static void openAMapWalkingRoute(RoutePara paramRoutePara, Context paramContext)
    throws AMapException
  {
    b(paramRoutePara, paramContext, 4);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.AMapUtils
 * JD-Core Version:    0.6.2
 */