package com.amap.api.services.share;

public abstract interface ShareSearch$OnShareSearchListener
{
  public abstract void onBusRouteShareUrlSearched(String paramString, int paramInt);

  public abstract void onDrivingRouteShareUrlSearched(String paramString, int paramInt);

  public abstract void onLocationShareUrlSearched(String paramString, int paramInt);

  public abstract void onNaviShareUrlSearched(String paramString, int paramInt);

  public abstract void onPoiShareUrlSearched(String paramString, int paramInt);

  public abstract void onWalkRouteShareUrlSearched(String paramString, int paramInt);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.share.ShareSearch.OnShareSearchListener
 * JD-Core Version:    0.6.2
 */