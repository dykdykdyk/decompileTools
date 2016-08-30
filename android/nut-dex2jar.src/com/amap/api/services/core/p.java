package com.amap.api.services.core;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class p
  implements Parcelable.Creator<LatLonSharePoint>
{
  public final LatLonSharePoint a(Parcel paramParcel)
  {
    return new LatLonSharePoint(paramParcel);
  }

  public final LatLonSharePoint[] a(int paramInt)
  {
    return new LatLonSharePoint[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.p
 * JD-Core Version:    0.6.2
 */