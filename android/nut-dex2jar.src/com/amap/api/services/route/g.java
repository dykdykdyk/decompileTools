package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class g
  implements Parcelable.Creator<DriveRouteResult>
{
  public final DriveRouteResult a(Parcel paramParcel)
  {
    return new DriveRouteResult(paramParcel);
  }

  public final DriveRouteResult[] a(int paramInt)
  {
    return new DriveRouteResult[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.g
 * JD-Core Version:    0.6.2
 */