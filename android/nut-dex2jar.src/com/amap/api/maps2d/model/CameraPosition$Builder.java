package com.amap.api.maps2d.model;

import com.amap.api.mapcore2d.cw;

public final class CameraPosition$Builder
{
  private LatLng a;
  private float b;
  private float c;
  private float d;

  public CameraPosition$Builder()
  {
  }

  public CameraPosition$Builder(CameraPosition paramCameraPosition)
  {
    target(paramCameraPosition.target).bearing(paramCameraPosition.bearing).tilt(paramCameraPosition.tilt).zoom(paramCameraPosition.zoom);
  }

  public final Builder bearing(float paramFloat)
  {
    this.d = paramFloat;
    return this;
  }

  public final CameraPosition build()
  {
    cw.a(this.a);
    return new CameraPosition(this.a, this.b, this.c, this.d);
  }

  public final Builder target(LatLng paramLatLng)
  {
    this.a = paramLatLng;
    return this;
  }

  public final Builder tilt(float paramFloat)
  {
    this.c = paramFloat;
    return this;
  }

  public final Builder zoom(float paramFloat)
  {
    this.b = paramFloat;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.CameraPosition.Builder
 * JD-Core Version:    0.6.2
 */