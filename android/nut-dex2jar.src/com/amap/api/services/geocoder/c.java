package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator<GeocodeAddress>
{
  public final GeocodeAddress a(Parcel paramParcel)
  {
    return new GeocodeAddress(paramParcel, null);
  }

  public final GeocodeAddress[] a(int paramInt)
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.c
 * JD-Core Version:    0.6.2
 */