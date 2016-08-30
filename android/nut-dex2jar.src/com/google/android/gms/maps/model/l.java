package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.dynamic.h;

public final class l
  implements Parcelable.Creator<GroundOverlayOptions>
{
  static void a(GroundOverlayOptions paramGroundOverlayOptions, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 20293);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 1, paramGroundOverlayOptions.a);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 2, paramGroundOverlayOptions.b.a.asBinder());
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 3, paramGroundOverlayOptions.c, paramInt);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 4, paramGroundOverlayOptions.d);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 5, paramGroundOverlayOptions.e);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 6, paramGroundOverlayOptions.f, paramInt);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 7, paramGroundOverlayOptions.g);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 8, paramGroundOverlayOptions.h);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 9, paramGroundOverlayOptions.i);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 10, paramGroundOverlayOptions.j);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 11, paramGroundOverlayOptions.k);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 12, paramGroundOverlayOptions.l);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 13, paramGroundOverlayOptions.m);
    com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.l
 * JD-Core Version:    0.6.2
 */