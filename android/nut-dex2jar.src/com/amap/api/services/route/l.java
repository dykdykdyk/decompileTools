package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class l
  implements Parcelable.Creator<RouteResult>
{
  public final RouteResult a(Parcel paramParcel)
  {
    return new RouteResult(paramParcel);
  }

  public final RouteResult[] a(int paramInt)
  {
    return new RouteResult[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.l
 * JD-Core Version:    0.6.2
 */