package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class m
  implements Parcelable.Creator<RouteSearch.BusRouteQuery>
{
  public final RouteSearch.BusRouteQuery a(Parcel paramParcel)
  {
    return new RouteSearch.BusRouteQuery(paramParcel);
  }

  public final RouteSearch.BusRouteQuery[] a(int paramInt)
  {
    return new RouteSearch.BusRouteQuery[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.m
 * JD-Core Version:    0.6.2
 */