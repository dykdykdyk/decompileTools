package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class p
  implements Parcelable.Creator<RouteSearch.WalkRouteQuery>
{
  public final RouteSearch.WalkRouteQuery a(Parcel paramParcel)
  {
    return new RouteSearch.WalkRouteQuery(paramParcel);
  }

  public final RouteSearch.WalkRouteQuery[] a(int paramInt)
  {
    return new RouteSearch.WalkRouteQuery[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.p
 * JD-Core Version:    0.6.2
 */