package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class u
  implements Parcelable.Creator<StreetViewPanoramaLocation>
{
  static void a(StreetViewPanoramaLocation paramStreetViewPanoramaLocation, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramStreetViewPanoramaLocation.a);
    a.a(paramParcel, 2, paramStreetViewPanoramaLocation.b, paramInt);
    a.a(paramParcel, 3, paramStreetViewPanoramaLocation.c, paramInt);
    a.a(paramParcel, 4, paramStreetViewPanoramaLocation.d);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.u
 * JD-Core Version:    0.6.2
 */