package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.dynamic.h;

public final class o
  implements Parcelable.Creator<MarkerOptions>
{
  static void a(MarkerOptions paramMarkerOptions, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 20293);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 1, paramMarkerOptions.a);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 2, paramMarkerOptions.b, paramInt);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 3, paramMarkerOptions.c);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 4, paramMarkerOptions.d);
    if (paramMarkerOptions.e == null);
    for (IBinder localIBinder = null; ; localIBinder = paramMarkerOptions.e.a.asBinder())
    {
      com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 5, localIBinder);
      com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 6, paramMarkerOptions.f);
      com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 7, paramMarkerOptions.g);
      com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 8, paramMarkerOptions.h);
      com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 9, paramMarkerOptions.i);
      com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 10, paramMarkerOptions.j);
      com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 11, paramMarkerOptions.k);
      com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 12, paramMarkerOptions.l);
      com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 13, paramMarkerOptions.m);
      com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 14, paramMarkerOptions.n);
      com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, i);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.o
 * JD-Core Version:    0.6.2
 */