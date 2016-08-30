package com.amap.api.services.share;

public class ShareSearch$ShareWalkRouteQuery
{
  private ShareSearch.ShareFromAndTo a;
  private int b;

  public ShareSearch$ShareWalkRouteQuery(ShareSearch.ShareFromAndTo paramShareFromAndTo, int paramInt)
  {
    this.a = paramShareFromAndTo;
    this.b = paramInt;
  }

  public ShareSearch.ShareFromAndTo getShareFromAndTo()
  {
    return this.a;
  }

  public int getWalkMode()
  {
    return this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.share.ShareSearch.ShareWalkRouteQuery
 * JD-Core Version:    0.6.2
 */