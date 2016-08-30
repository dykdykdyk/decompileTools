package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.maps.a.af;

public final class x
  implements Parcelable.Creator<GoogleMapOptions>
{
  static void a(GoogleMapOptions paramGoogleMapOptions, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramGoogleMapOptions.a);
    a.a(paramParcel, 2, af.a(paramGoogleMapOptions.b));
    a.a(paramParcel, 3, af.a(paramGoogleMapOptions.c));
    a.a(paramParcel, 4, paramGoogleMapOptions.d);
    a.a(paramParcel, 5, paramGoogleMapOptions.e, paramInt);
    a.a(paramParcel, 6, af.a(paramGoogleMapOptions.f));
    a.a(paramParcel, 7, af.a(paramGoogleMapOptions.g));
    a.a(paramParcel, 8, af.a(paramGoogleMapOptions.h));
    a.a(paramParcel, 9, af.a(paramGoogleMapOptions.i));
    a.a(paramParcel, 10, af.a(paramGoogleMapOptions.j));
    a.a(paramParcel, 11, af.a(paramGoogleMapOptions.k));
    a.a(paramParcel, 12, af.a(paramGoogleMapOptions.l));
    a.a(paramParcel, 14, af.a(paramGoogleMapOptions.m));
    a.a(paramParcel, 15, af.a(paramGoogleMapOptions.n));
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.x
 * JD-Core Version:    0.6.2
 */