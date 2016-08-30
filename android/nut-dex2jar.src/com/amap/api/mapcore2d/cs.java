package com.amap.api.mapcore2d;

import com.amap.api.maps2d.model.LatLng;
import java.math.BigDecimal;

public class cs
{
  private static double a(double paramDouble)
  {
    return Math.sin(3000.0D * paramDouble * 0.0174532925199433D) * 2.E-005D;
  }

  private static double a(double paramDouble, int paramInt)
  {
    return new BigDecimal(paramDouble).setScale(paramInt, 4).doubleValue();
  }

  private static ct a(double paramDouble1, double paramDouble2)
  {
    ct localct = new ct();
    double d1 = Math.cos(b(paramDouble1) + Math.atan2(paramDouble2, paramDouble1));
    double d2 = a(paramDouble2);
    double d3 = Math.sqrt(paramDouble1 * paramDouble1 + paramDouble2 * paramDouble2);
    double d4 = Math.sin(b(paramDouble1) + Math.atan2(paramDouble2, paramDouble1));
    double d5 = a(paramDouble2);
    paramDouble1 = Math.sqrt(paramDouble1 * paramDouble1 + paramDouble2 * paramDouble2);
    localct.a = a(d1 * (d2 + d3) + 0.0065D, 8);
    localct.b = a(d4 * (d5 + paramDouble1) + 0.006D, 8);
    return localct;
  }

  private static LatLng a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    ct localct1 = new ct();
    paramDouble3 = paramDouble1 - paramDouble3;
    paramDouble4 = paramDouble2 - paramDouble4;
    ct localct2 = a(paramDouble3, paramDouble4);
    localct1.a = a(paramDouble3 + paramDouble1 - localct2.a, 8);
    localct1.b = a(paramDouble2 + paramDouble4 - localct2.b, 8);
    return new LatLng(localct1.b, localct1.a);
  }

  public static LatLng a(LatLng paramLatLng)
  {
    if (paramLatLng != null)
      return b(paramLatLng);
    return null;
  }

  private static LatLng a(LatLng paramLatLng, int paramInt)
  {
    double d1 = 0.006401062D;
    double d2 = 0.0060424805D;
    int i = 0;
    LatLng localLatLng = null;
    while (i < paramInt)
    {
      localLatLng = a(paramLatLng.longitude, paramLatLng.latitude, d1, d2);
      d1 = paramLatLng.longitude - localLatLng.longitude;
      d2 = paramLatLng.latitude - localLatLng.latitude;
      i += 1;
    }
    return localLatLng;
  }

  private static double b(double paramDouble)
  {
    return Math.cos(3000.0D * paramDouble * 0.0174532925199433D) * 3.E-006D;
  }

  private static LatLng b(LatLng paramLatLng)
  {
    return a(paramLatLng, 2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cs
 * JD-Core Version:    0.6.2
 */