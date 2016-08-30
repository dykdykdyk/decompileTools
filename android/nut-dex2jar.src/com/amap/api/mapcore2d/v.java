package com.amap.api.mapcore2d;

public class v
{
  public static float a = 0.9F;
  public static String b = "";
  public static int c = 19;
  public static int d = 3;
  public static final v.a e = v.a.a;
  public static final String[] f = { "com.amap.api.mapcore2d", "com.amap.api.maps2d" };
  public static String g;
  public static String h;
  public static int i = 256;
  public static int j = 21;
  public static int k;
  static int l = 0;
  static int m = 0;
  static int n = 0;
  static boolean o = true;
  static boolean p = true;

  public static di a(boolean paramBoolean)
  {
    try
    {
      di localdi = new di.a("2dmap", "2.8.0", "AMAP_SDK_Android_2DMap_2.8.0").a(f).a(paramBoolean).a();
      return localdi;
    }
    catch (da localda)
    {
      cz.a(localda, "ConfigableConst", "getSDKInfo");
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.v
 * JD-Core Version:    0.6.2
 */