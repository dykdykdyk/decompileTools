package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class j
  implements Parcelable.Creator<CameraPosition>
{
  static void a(CameraPosition paramCameraPosition, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramCameraPosition.a);
    a.a(paramParcel, 2, paramCameraPosition.b, paramInt);
    a.a(paramParcel, 3, paramCameraPosition.c);
    a.a(paramParcel, 4, paramCameraPosition.d);
    a.a(paramParcel, 5, paramCameraPosition.e);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.j
 * JD-Core Version:    0.6.2
 */