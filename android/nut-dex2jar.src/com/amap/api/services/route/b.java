package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator<BusRouteResult>
{
  public final BusRouteResult a(Parcel paramParcel)
  {
    return new BusRouteResult(paramParcel);
  }

  public final BusRouteResult[] a(int paramInt)
  {
    return new BusRouteResult[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.b
 * JD-Core Version:    0.6.2
 */