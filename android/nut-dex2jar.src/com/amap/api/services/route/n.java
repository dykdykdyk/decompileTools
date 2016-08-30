package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class n
  implements Parcelable.Creator<RouteSearch.DriveRouteQuery>
{
  public final RouteSearch.DriveRouteQuery a(Parcel paramParcel)
  {
    return new RouteSearch.DriveRouteQuery(paramParcel);
  }

  public final RouteSearch.DriveRouteQuery[] a(int paramInt)
  {
    return new RouteSearch.DriveRouteQuery[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.n
 * JD-Core Version:    0.6.2
 */