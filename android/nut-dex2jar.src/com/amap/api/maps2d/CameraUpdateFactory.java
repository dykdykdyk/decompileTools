package com.amap.api.maps2d;

import android.graphics.Point;
import com.amap.api.mapcore2d.r;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;

public final class CameraUpdateFactory
{
  public static CameraUpdate changeLatLng(LatLng paramLatLng)
  {
    return new CameraUpdate(r.a(paramLatLng));
  }

  public static CameraUpdate newCameraPosition(CameraPosition paramCameraPosition)
  {
    return new CameraUpdate(r.a(paramCameraPosition));
  }

  public static CameraUpdate newLatLng(LatLng paramLatLng)
  {
    return new CameraUpdate(r.b(paramLatLng));
  }

  public static CameraUpdate newLatLngBounds(LatLngBounds paramLatLngBounds, int paramInt)
  {
    return new CameraUpdate(r.a(paramLatLngBounds, paramInt));
  }

  public static CameraUpdate newLatLngBounds(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
  {
    return new CameraUpdate(r.a(paramLatLngBounds, paramInt1, paramInt2, paramInt3));
  }

  public static CameraUpdate newLatLngZoom(LatLng paramLatLng, float paramFloat)
  {
    return new CameraUpdate(r.a(paramLatLng, paramFloat));
  }

  public static CameraUpdate scrollBy(float paramFloat1, float paramFloat2)
  {
    return new CameraUpdate(r.a(paramFloat1, paramFloat2));
  }

  public static CameraUpdate zoomBy(float paramFloat)
  {
    return new CameraUpdate(r.b(paramFloat));
  }

  public static CameraUpdate zoomBy(float paramFloat, Point paramPoint)
  {
    return new CameraUpdate(r.a(paramFloat, paramPoint));
  }

  public static CameraUpdate zoomIn()
  {
    return new CameraUpdate(r.b());
  }

  public static CameraUpdate zoomOut()
  {
    return new CameraUpdate(r.c());
  }

  public static CameraUpdate zoomTo(float paramFloat)
  {
    return new CameraUpdate(r.a(paramFloat));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.CameraUpdateFactory
 * JD-Core Version:    0.6.2
 */