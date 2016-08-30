package com.amap.api.services.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class o
  implements Parcelable.Creator<LatLonPoint>
{
  public final LatLonPoint a(Parcel paramParcel)
  {
    return new LatLonPoint(paramParcel);
  }

  public final LatLonPoint[] a(int paramInt)
  {
    return new LatLonPoint[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.o
 * JD-Core Version:    0.6.2
 */