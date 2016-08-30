package com.amap.api.maps2d;

import com.amap.api.mapcore2d.cs;
import com.amap.api.mapcore2d.cu;
import com.amap.api.mapcore2d.cv;
import com.amap.api.maps2d.model.LatLng;

public class CoordinateConverter
{
  private CoordinateConverter.CoordType a = null;
  private LatLng b = null;

  public LatLng convert()
  {
    if (this.a == null);
    while (this.b == null)
      return null;
    switch (b.a[this.a.ordinal()])
    {
    default:
      return null;
    case 1:
      return cs.a(this.b);
    case 2:
      return cu.a(this.b);
    case 3:
    case 4:
    case 5:
    case 6:
      return this.b;
    case 7:
    }
    return cv.a(this.b);
  }

  public CoordinateConverter coord(LatLng paramLatLng)
  {
    this.b = paramLatLng;
    return this;
  }

  public CoordinateConverter from(CoordinateConverter.CoordType paramCoordType)
  {
    this.a = paramCoordType;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.CoordinateConverter
 * JD-Core Version:    0.6.2
 */