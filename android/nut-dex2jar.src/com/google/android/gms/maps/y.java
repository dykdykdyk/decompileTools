package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.maps.a.af;

public final class y
  implements Parcelable.Creator<StreetViewPanoramaOptions>
{
  static void a(StreetViewPanoramaOptions paramStreetViewPanoramaOptions, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramStreetViewPanoramaOptions.a);
    a.a(paramParcel, 2, paramStreetViewPanoramaOptions.b, paramInt);
    a.a(paramParcel, 3, paramStreetViewPanoramaOptions.c);
    a.a(paramParcel, 4, paramStreetViewPanoramaOptions.d, paramInt);
    a.a(paramParcel, 5, paramStreetViewPanoramaOptions.e);
    a.a(paramParcel, 6, af.a(paramStreetViewPanoramaOptions.f));
    a.a(paramParcel, 7, af.a(paramStreetViewPanoramaOptions.g));
    a.a(paramParcel, 8, af.a(paramStreetViewPanoramaOptions.h));
    a.a(paramParcel, 9, af.a(paramStreetViewPanoramaOptions.i));
    a.a(paramParcel, 10, af.a(paramStreetViewPanoramaOptions.j));
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.y
 * JD-Core Version:    0.6.2
 */