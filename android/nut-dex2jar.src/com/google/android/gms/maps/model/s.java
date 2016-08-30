package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class s
  implements Parcelable.Creator<StreetViewPanoramaCamera>
{
  static void a(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, Parcel paramParcel)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramStreetViewPanoramaCamera.a);
    a.a(paramParcel, 2, paramStreetViewPanoramaCamera.b);
    a.a(paramParcel, 3, paramStreetViewPanoramaCamera.c);
    a.a(paramParcel, 4, paramStreetViewPanoramaCamera.d);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.s
 * JD-Core Version:    0.6.2
 */