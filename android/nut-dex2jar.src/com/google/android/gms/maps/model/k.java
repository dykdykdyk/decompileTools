package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class k
  implements Parcelable.Creator<CircleOptions>
{
  static void a(CircleOptions paramCircleOptions, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramCircleOptions.a);
    a.a(paramParcel, 2, paramCircleOptions.b, paramInt);
    a.a(paramParcel, 3, paramCircleOptions.c);
    a.a(paramParcel, 4, paramCircleOptions.d);
    a.a(paramParcel, 5, paramCircleOptions.e);
    a.a(paramParcel, 6, paramCircleOptions.f);
    a.a(paramParcel, 7, paramCircleOptions.g);
    a.a(paramParcel, 8, paramCircleOptions.h);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.k
 * JD-Core Version:    0.6.2
 */