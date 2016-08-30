package com.amap.api.services.nearby;

import com.amap.api.services.core.LatLonPoint;

public class NearbySearch$NearbyQuery
{
  private LatLonPoint a;
  private NearbySearchFunctionType b = NearbySearchFunctionType.DISTANCE_SEARCH;
  private int c = 1000;
  private int d = 1800;
  private int e = 1;

  public LatLonPoint getCenterPoint()
  {
    return this.a;
  }

  public int getCoordType()
  {
    return this.e;
  }

  public int getRadius()
  {
    return this.c;
  }

  public int getTimeRange()
  {
    return this.d;
  }

  public int getType()
  {
    switch (a.a[this.b.ordinal()])
    {
    case 1:
    default:
      return 0;
    case 2:
    }
    return 1;
  }

  public void setCenterPoint(LatLonPoint paramLatLonPoint)
  {
    this.a = paramLatLonPoint;
  }

  public void setCoordType(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1))
    {
      this.e = 1;
      return;
    }
    this.e = paramInt;
  }

  public void setRadius(int paramInt)
  {
    int i = paramInt;
    if (paramInt > 10000)
      i = 10000;
    this.c = i;
  }

  public void setTimeRange(int paramInt)
  {
    int i;
    if (paramInt < 5)
      i = 5;
    while (true)
    {
      this.d = i;
      return;
      i = paramInt;
      if (paramInt > 86400)
        i = 86400;
    }
  }

  public void setType(NearbySearchFunctionType paramNearbySearchFunctionType)
  {
    this.b = paramNearbySearchFunctionType;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.nearby.NearbySearch.NearbyQuery
 * JD-Core Version:    0.6.2
 */