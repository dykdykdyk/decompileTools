package com.amap.api.mapcore2d;

import com.amap.api.maps2d.model.LatLng;

public class cu
{
  static double a = 3.141592653589793D;

  public static double a(double paramDouble1, double paramDouble2)
  {
    return Math.cos(paramDouble2 / 100000.0D) * (paramDouble1 / 18000.0D) + Math.sin(paramDouble1 / 100000.0D) * (paramDouble2 / 9000.0D);
  }

  public static LatLng a(LatLng paramLatLng)
  {
    return cv.a(c(paramLatLng.longitude, paramLatLng.latitude));
  }

  public static double b(double paramDouble1, double paramDouble2)
  {
    return Math.sin(paramDouble2 / 100000.0D) * (paramDouble1 / 18000.0D) + Math.cos(paramDouble1 / 100000.0D) * (paramDouble2 / 9000.0D);
  }

  private static LatLng c(double paramDouble1, double paramDouble2)
  {
    paramDouble1 = ()(100000.0D * paramDouble1) % 36000000L;
    paramDouble2 = ()(100000.0D * paramDouble2) % 36000000L;
    int i = (int)(-a(paramDouble1, paramDouble2) + paramDouble1);
    int j = (int)(-b(paramDouble1, paramDouble2) + paramDouble2);
    double d = -a(i, j);
    int k;
    if (paramDouble1 > 0.0D)
    {
      i = 1;
      k = (int)(i + (d + paramDouble1));
      paramDouble1 = -b(k, j);
      if (paramDouble2 <= 0.0D)
        break label138;
    }
    label138: for (i = 1; ; i = -1)
    {
      i = (int)(i + (paramDouble1 + paramDouble2));
      paramDouble1 = k / 100000.0D;
      return new LatLng(i / 100000.0D, paramDouble1);
      i = -1;
      break;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cu
 * JD-Core Version:    0.6.2
 */