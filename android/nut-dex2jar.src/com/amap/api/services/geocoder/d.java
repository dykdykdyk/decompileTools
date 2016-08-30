package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class d
  implements Parcelable.Creator<RegeocodeAddress>
{
  public final RegeocodeAddress a(Parcel paramParcel)
  {
    return new RegeocodeAddress(paramParcel, null);
  }

  public final RegeocodeAddress[] a(int paramInt)
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.d
 * JD-Core Version:    0.6.2
 */