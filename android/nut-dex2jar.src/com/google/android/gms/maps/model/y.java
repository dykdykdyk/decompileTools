package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class y
  implements Parcelable.Creator<VisibleRegion>
{
  static void a(VisibleRegion paramVisibleRegion, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramVisibleRegion.a);
    a.a(paramParcel, 2, paramVisibleRegion.b, paramInt);
    a.a(paramParcel, 3, paramVisibleRegion.c, paramInt);
    a.a(paramParcel, 4, paramVisibleRegion.d, paramInt);
    a.a(paramParcel, 5, paramVisibleRegion.e, paramInt);
    a.a(paramParcel, 6, paramVisibleRegion.f, paramInt);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.y
 * JD-Core Version:    0.6.2
 */