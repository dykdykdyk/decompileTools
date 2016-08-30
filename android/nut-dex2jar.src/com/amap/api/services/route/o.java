package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class o
  implements Parcelable.Creator<RouteSearch.FromAndTo>
{
  public final RouteSearch.FromAndTo a(Parcel paramParcel)
  {
    return new RouteSearch.FromAndTo(paramParcel);
  }

  public final RouteSearch.FromAndTo[] a(int paramInt)
  {
    return new RouteSearch.FromAndTo[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.o
 * JD-Core Version:    0.6.2
 */