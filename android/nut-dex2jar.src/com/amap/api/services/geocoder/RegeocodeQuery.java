package com.amap.api.services.geocoder;

import com.amap.api.services.core.LatLonPoint;

public class RegeocodeQuery
{
  private LatLonPoint a;
  private float b;
  private String c = "autonavi";

  public RegeocodeQuery(LatLonPoint paramLatLonPoint, float paramFloat, String paramString)
  {
    this.a = paramLatLonPoint;
    this.b = paramFloat;
    setLatLonType(paramString);
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      paramObject = (RegeocodeQuery)paramObject;
      if (this.c == null)
      {
        if (paramObject.c != null)
          return false;
      }
      else if (!this.c.equals(paramObject.c))
        return false;
      if (this.a == null)
      {
        if (paramObject.a != null)
          return false;
      }
      else if (!this.a.equals(paramObject.a))
        return false;
    }
    while (Float.floatToIntBits(this.b) == Float.floatToIntBits(paramObject.b));
    return false;
  }

  public String getLatLonType()
  {
    return this.c;
  }

  public LatLonPoint getPoint()
  {
    return this.a;
  }

  public float getRadius()
  {
    return this.b;
  }

  public int hashCode()
  {
    int j = 0;
    int i;
    if (this.c == null)
    {
      i = 0;
      if (this.a != null)
        break label50;
    }
    while (true)
    {
      return ((i + 31) * 31 + j) * 31 + Float.floatToIntBits(this.b);
      i = this.c.hashCode();
      break;
      label50: j = this.a.hashCode();
    }
  }

  public void setLatLonType(String paramString)
  {
    if ((paramString != null) && ((paramString.equals("autonavi")) || (paramString.equals("gps"))))
      this.c = paramString;
  }

  public void setPoint(LatLonPoint paramLatLonPoint)
  {
    this.a = paramLatLonPoint;
  }

  public void setRadius(float paramFloat)
  {
    this.b = paramFloat;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.RegeocodeQuery
 * JD-Core Version:    0.6.2
 */