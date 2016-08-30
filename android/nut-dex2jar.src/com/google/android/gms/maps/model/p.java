package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class p
  implements Parcelable.Creator<PointOfInterest>
{
  static void a(PointOfInterest paramPointOfInterest, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramPointOfInterest.a);
    a.a(paramParcel, 2, paramPointOfInterest.b, paramInt);
    a.a(paramParcel, 3, paramPointOfInterest.c);
    a.a(paramParcel, 4, paramPointOfInterest.d);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.p
 * JD-Core Version:    0.6.2
 */