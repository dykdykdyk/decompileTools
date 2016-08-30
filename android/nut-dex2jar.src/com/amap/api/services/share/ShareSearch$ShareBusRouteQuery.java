package com.amap.api.services.share;

public class ShareSearch$ShareBusRouteQuery
{
  private ShareSearch.ShareFromAndTo a;
  private int b;

  public ShareSearch$ShareBusRouteQuery(ShareSearch.ShareFromAndTo paramShareFromAndTo, int paramInt)
  {
    this.a = paramShareFromAndTo;
    this.b = paramInt;
  }

  public int getBusMode()
  {
    return this.b;
  }

  public ShareSearch.ShareFromAndTo getShareFromAndTo()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.share.ShareSearch.ShareBusRouteQuery
 * JD-Core Version:    0.6.2
 */