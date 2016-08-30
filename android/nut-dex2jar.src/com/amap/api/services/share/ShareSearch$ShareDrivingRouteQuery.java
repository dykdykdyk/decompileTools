package com.amap.api.services.share;

public class ShareSearch$ShareDrivingRouteQuery
{
  private ShareSearch.ShareFromAndTo a;
  private int b;

  public ShareSearch$ShareDrivingRouteQuery(ShareSearch.ShareFromAndTo paramShareFromAndTo, int paramInt)
  {
    this.a = paramShareFromAndTo;
    this.b = paramInt;
  }

  public int getDrivingMode()
  {
    return this.b;
  }

  public ShareSearch.ShareFromAndTo getShareFromAndTo()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.share.ShareSearch.ShareDrivingRouteQuery
 * JD-Core Version:    0.6.2
 */