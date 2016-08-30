package com.amap.api.mapcore2d;

import com.amap.api.maps2d.model.LatLng;

public class cv
{
  public static LatLng a(LatLng paramLatLng)
  {
    paramLatLng = fj.a(paramLatLng.longitude, paramLatLng.latitude);
    return new LatLng(paramLatLng[1], paramLatLng[0]);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cv
 * JD-Core Version:    0.6.2
 */