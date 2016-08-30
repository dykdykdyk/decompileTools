package com.amap.api.mapcore2d;

import android.graphics.Point;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.CameraPosition.Builder;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;

public class r
{
  r.a a = r.a.a;
  float b;
  float c;
  float d;
  float e;
  CameraPosition f;
  LatLngBounds g;
  Point h = null;
  boolean i = false;
  private float j;
  private float k;
  private int l;
  private int m;
  private int n;
  private ak o;

  public static r a()
  {
    return new r();
  }

  public static r a(float paramFloat)
  {
    r localr = a();
    localr.a = r.a.f;
    localr.d = paramFloat;
    return localr;
  }

  public static r a(float paramFloat1, float paramFloat2)
  {
    r localr = a();
    localr.a = r.a.h;
    localr.b = paramFloat1;
    localr.c = paramFloat2;
    return localr;
  }

  public static r a(float paramFloat, Point paramPoint)
  {
    r localr = a();
    localr.a = r.a.g;
    localr.e = paramFloat;
    localr.h = paramPoint;
    return localr;
  }

  static r a(ak paramak, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    r localr = a();
    localr.a = r.a.l;
    localr.o = paramak;
    localr.d = paramFloat1;
    localr.k = paramFloat2;
    localr.j = paramFloat3;
    return localr;
  }

  public static r a(CameraPosition paramCameraPosition)
  {
    r localr = a();
    localr.a = r.a.i;
    localr.f = paramCameraPosition;
    return localr;
  }

  public static r a(LatLng paramLatLng)
  {
    r localr = a();
    localr.a = r.a.c;
    localr.f = new CameraPosition(paramLatLng, 0.0F, 0.0F, 0.0F);
    return localr;
  }

  public static r a(LatLng paramLatLng, float paramFloat)
  {
    return a(CameraPosition.builder().target(paramLatLng).zoom(paramFloat).build());
  }

  public static r a(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return a(CameraPosition.builder().target(paramLatLng).zoom(paramFloat1).bearing(paramFloat2).tilt(paramFloat3).build());
  }

  public static r a(LatLngBounds paramLatLngBounds, int paramInt)
  {
    r localr = a();
    localr.a = r.a.j;
    localr.g = paramLatLngBounds;
    localr.l = paramInt;
    return localr;
  }

  public static r a(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
  {
    r localr = a();
    localr.a = r.a.k;
    localr.g = paramLatLngBounds;
    localr.l = paramInt3;
    localr.m = paramInt1;
    localr.n = paramInt2;
    return localr;
  }

  public static r b()
  {
    r localr = a();
    localr.a = r.a.b;
    return localr;
  }

  public static r b(float paramFloat)
  {
    return a(paramFloat, null);
  }

  public static r b(LatLng paramLatLng)
  {
    return a(CameraPosition.builder().target(paramLatLng).build());
  }

  public static r c()
  {
    r localr = a();
    localr.a = r.a.e;
    return localr;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.r
 * JD-Core Version:    0.6.2
 */