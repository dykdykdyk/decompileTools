package com.amap.api.maps2d.model;

public class PoiPara
{
  private LatLng a;
  private String b;

  public LatLng getCenter()
  {
    return this.a;
  }

  public String getKeywords()
  {
    return this.b;
  }

  public void setCenter(LatLng paramLatLng)
  {
    this.a = paramLatLng;
  }

  public void setKeywords(String paramString)
  {
    this.b = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.PoiPara
 * JD-Core Version:    0.6.2
 */