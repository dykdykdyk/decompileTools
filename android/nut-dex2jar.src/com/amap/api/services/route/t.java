package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class t
  implements Parcelable.Creator<WalkRouteResult>
{
  public final WalkRouteResult a(Parcel paramParcel)
  {
    return new WalkRouteResult(paramParcel);
  }

  public final WalkRouteResult[] a(int paramInt)
  {
    return new WalkRouteResult[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.t
 * JD-Core Version:    0.6.2
 */