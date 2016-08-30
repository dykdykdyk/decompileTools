package com.amap.api.services.share;

import com.amap.api.services.core.LatLonPoint;

public class ShareSearch$ShareFromAndTo
{
  private LatLonPoint a;
  private LatLonPoint b;
  private String c = "起点";
  private String d = "终点";

  public ShareSearch$ShareFromAndTo(LatLonPoint paramLatLonPoint1, LatLonPoint paramLatLonPoint2)
  {
    this.a = paramLatLonPoint1;
    this.b = paramLatLonPoint2;
  }

  public LatLonPoint getFrom()
  {
    return this.a;
  }

  public String getFromName()
  {
    return this.c;
  }

  public LatLonPoint getTo()
  {
    return this.b;
  }

  public String getToName()
  {
    return this.d;
  }

  public void setFromName(String paramString)
  {
    this.c = paramString;
  }

  public void setToName(String paramString)
  {
    this.d = paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.share.ShareSearch.ShareFromAndTo
 * JD-Core Version:    0.6.2
 */