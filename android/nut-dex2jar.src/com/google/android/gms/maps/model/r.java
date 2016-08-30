package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class r
  implements Parcelable.Creator<PolylineOptions>
{
  static void a(PolylineOptions paramPolylineOptions, Parcel paramParcel)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramPolylineOptions.a);
    a.a(paramParcel, 2, paramPolylineOptions.b);
    a.a(paramParcel, 3, paramPolylineOptions.c);
    a.a(paramParcel, 4, paramPolylineOptions.d);
    a.a(paramParcel, 5, paramPolylineOptions.e);
    a.a(paramParcel, 6, paramPolylineOptions.f);
    a.a(paramParcel, 7, paramPolylineOptions.g);
    a.a(paramParcel, 8, paramPolylineOptions.h);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.r
 * JD-Core Version:    0.6.2
 */