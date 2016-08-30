package com.amap.api.maps2d.model;

import com.amap.api.mapcore2d.cw;

public final class LatLngBounds$Builder
{
  private double a = (1.0D / 0.0D);
  private double b = (-1.0D / 0.0D);
  private double c = (0.0D / 0.0D);
  private double d = (0.0D / 0.0D);

  private boolean a(double paramDouble)
  {
    if (this.c <= this.d)
      if ((this.c > paramDouble) || (paramDouble > this.d));
    while ((this.c <= paramDouble) || (paramDouble <= this.d))
    {
      return true;
      return false;
    }
    return false;
  }

  public final LatLngBounds build()
  {
    if (!Double.isNaN(this.c));
    for (boolean bool = true; ; bool = false)
    {
      cw.a(bool, "no included points");
      return new LatLngBounds(new LatLng(this.a, this.c), new LatLng(this.b, this.d));
    }
  }

  public final Builder include(LatLng paramLatLng)
  {
    this.a = Math.min(this.a, paramLatLng.latitude);
    this.b = Math.max(this.b, paramLatLng.latitude);
    double d1 = paramLatLng.longitude;
    if (Double.isNaN(this.c))
      this.c = d1;
    do
    {
      this.d = d1;
      do
        return this;
      while (a(d1));
    }
    while (LatLngBounds.a(this.c, d1) >= LatLngBounds.b(this.d, d1));
    this.c = d1;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.LatLngBounds.Builder
 * JD-Core Version:    0.6.2
 */