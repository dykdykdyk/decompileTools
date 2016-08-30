package com.amap.api.services.poisearch;

import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.i;
import java.util.List;

public class PoiSearch$SearchBound
  implements Cloneable
{
  public static final String BOUND_SHAPE = "Bound";
  public static final String ELLIPSE_SHAPE = "Ellipse";
  public static final String POLYGON_SHAPE = "Polygon";
  public static final String RECTANGLE_SHAPE = "Rectangle";
  private LatLonPoint a;
  private LatLonPoint b;
  private int c;
  private LatLonPoint d;
  private String e;
  private boolean f = true;
  private List<LatLonPoint> g;

  public PoiSearch$SearchBound(LatLonPoint paramLatLonPoint, int paramInt)
  {
    this.e = "Bound";
    this.c = paramInt;
    this.d = paramLatLonPoint;
    a(paramLatLonPoint, i.a(paramInt), i.a(paramInt));
  }

  public PoiSearch$SearchBound(LatLonPoint paramLatLonPoint, int paramInt, boolean paramBoolean)
  {
    this.e = "Bound";
    this.c = paramInt;
    this.d = paramLatLonPoint;
    a(paramLatLonPoint, i.a(paramInt), i.a(paramInt));
    this.f = paramBoolean;
  }

  public PoiSearch$SearchBound(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
  {
    this.e = "Rectangle";
    a(paramLatLonPoint1, paramLatLonPoint2);
  }

  private PoiSearch$SearchBound(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2, int paramInt, LatLonPoint paramLatLonPoint3, String paramString, List<LatLonPoint> paramList, boolean paramBoolean)
  {
    this.a = paramLatLonPoint1;
    this.b = paramLatLonPoint2;
    this.c = paramInt;
    this.d = paramLatLonPoint3;
    this.e = paramString;
    this.g = paramList;
    this.f = paramBoolean;
  }

  public PoiSearch$SearchBound(List<LatLonPoint> paramList)
  {
    this.e = "Polygon";
    this.g = paramList;
  }

  private void a(LatLonPoint paramLatLonPoint, double paramDouble1, double paramDouble2)
  {
    paramDouble1 /= 2.0D;
    paramDouble2 /= 2.0D;
    double d1 = paramLatLonPoint.getLatitude();
    double d2 = paramLatLonPoint.getLongitude();
    a(new LatLonPoint(d1 - paramDouble1, d2 - paramDouble2), new LatLonPoint(paramDouble1 + d1, paramDouble2 + d2));
  }

  private void a(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
  {
    this.a = paramLatLonPoint1;
    this.b = paramLatLonPoint2;
    if ((this.a.getLatitude() >= this.b.getLatitude()) || (this.a.getLongitude() >= this.b.getLongitude()))
      throw new IllegalArgumentException("invalid rect ");
    this.d = new LatLonPoint((this.a.getLatitude() + this.b.getLatitude()) / 2.0D, (this.a.getLongitude() + this.b.getLongitude()) / 2.0D);
  }

  public SearchBound clone()
  {
    try
    {
      super.clone();
      return new SearchBound(this.a, this.b, this.c, this.d, this.e, this.g, this.f);
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        i.a(localCloneNotSupportedException, "PoiSearch", "SearchBoundClone");
    }
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        paramObject = (SearchBound)paramObject;
        if (this.d == null)
        {
          if (paramObject.d != null)
            return false;
        }
        else if (!this.d.equals(paramObject.d))
          return false;
        if (this.f != paramObject.f)
          return false;
        if (this.a == null)
        {
          if (paramObject.a != null)
            return false;
        }
        else if (!this.a.equals(paramObject.a))
          return false;
        if (this.b == null)
        {
          if (paramObject.b != null)
            return false;
        }
        else if (!this.b.equals(paramObject.b))
          return false;
        if (this.g == null)
        {
          if (paramObject.g != null)
            return false;
        }
        else if (!this.g.equals(paramObject.g))
          return false;
        if (this.c != paramObject.c)
          return false;
        if (this.e != null)
          break;
      }
      while (paramObject.e == null);
      return false;
    }
    while (this.e.equals(paramObject.e));
    return false;
  }

  public LatLonPoint getCenter()
  {
    return this.d;
  }

  public double getLatSpanInMeter()
  {
    if (!"Rectangle".equals(getShape()))
      return 0.0D;
    return this.b.getLatitude() - this.a.getLatitude();
  }

  public double getLonSpanInMeter()
  {
    if (!"Rectangle".equals(getShape()))
      return 0.0D;
    return this.b.getLongitude() - this.a.getLongitude();
  }

  public LatLonPoint getLowerLeft()
  {
    return this.a;
  }

  public List<LatLonPoint> getPolyGonList()
  {
    return this.g;
  }

  public int getRange()
  {
    return this.c;
  }

  public String getShape()
  {
    return this.e;
  }

  public LatLonPoint getUpperRight()
  {
    return this.b;
  }

  public int hashCode()
  {
    int i1 = 0;
    int i;
    int j;
    label23: int k;
    label32: int m;
    label42: int n;
    label52: int i2;
    if (this.d == null)
    {
      i = 0;
      if (!this.f)
        break label115;
      j = 1231;
      if (this.a != null)
        break label122;
      k = 0;
      if (this.b != null)
        break label133;
      m = 0;
      if (this.g != null)
        break label145;
      n = 0;
      i2 = this.c;
      if (this.e != null)
        break label159;
    }
    while (true)
    {
      return ((n + (m + (k + (j + (i + 31) * 31) * 31) * 31) * 31) * 31 + i2) * 31 + i1;
      i = this.d.hashCode();
      break;
      label115: j = 1237;
      break label23;
      label122: k = this.a.hashCode();
      break label32;
      label133: m = this.b.hashCode();
      break label42;
      label145: n = this.g.hashCode();
      break label52;
      label159: i1 = this.e.hashCode();
    }
  }

  public boolean isDistanceSort()
  {
    return this.f;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.PoiSearch.SearchBound
 * JD-Core Version:    0.6.2
 */