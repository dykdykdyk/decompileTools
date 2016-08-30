package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class v
  implements Parcelable.Creator<StreetViewPanoramaOrientation>
{
  static void a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation, Parcel paramParcel)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramStreetViewPanoramaOrientation.a);
    a.a(paramParcel, 2, paramStreetViewPanoramaOrientation.b);
    a.a(paramParcel, 3, paramStreetViewPanoramaOrientation.c);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.v
 * JD-Core Version:    0.6.2
 */