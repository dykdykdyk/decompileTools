package com.amap.api.services.route;

public abstract interface RouteSearch$OnRouteSearchListener
{
  public abstract void onBusRouteSearched(BusRouteResult paramBusRouteResult, int paramInt);

  public abstract void onDriveRouteSearched(DriveRouteResult paramDriveRouteResult, int paramInt);

  public abstract void onWalkRouteSearched(WalkRouteResult paramWalkRouteResult, int paramInt);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.RouteSearch.OnRouteSearchListener
 * JD-Core Version:    0.6.2
 */