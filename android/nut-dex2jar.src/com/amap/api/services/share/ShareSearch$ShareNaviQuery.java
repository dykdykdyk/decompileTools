package com.amap.api.services.share;

public class ShareSearch$ShareNaviQuery
{
  private ShareSearch.ShareFromAndTo a;
  private int b;

  public ShareSearch$ShareNaviQuery(ShareSearch.ShareFromAndTo paramShareFromAndTo, int paramInt)
  {
    this.a = paramShareFromAndTo;
    this.b = paramInt;
  }

  public ShareSearch.ShareFromAndTo getFromAndTo()
  {
    return this.a;
  }

  public int getNaviMode()
  {
    return this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.share.ShareSearch.ShareNaviQuery
 * JD-Core Version:    0.6.2
 */