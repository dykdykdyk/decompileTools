package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class aa
  implements Parcelable.Creator<Status>
{
  static void a(Status paramStatus, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramStatus.h);
    a.a(paramParcel, 2, paramStatus.i);
    a.a(paramParcel, 3, paramStatus.j, paramInt);
    a.a(paramParcel, 1000, paramStatus.g);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.aa
 * JD-Core Version:    0.6.2
 */