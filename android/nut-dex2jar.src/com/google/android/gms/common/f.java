package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class f
  implements Parcelable.Creator<ConnectionResult>
{
  static void a(ConnectionResult paramConnectionResult, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramConnectionResult.b);
    a.a(paramParcel, 2, paramConnectionResult.c);
    a.a(paramParcel, 3, paramConnectionResult.d, paramInt);
    a.a(paramParcel, 4, paramConnectionResult.e);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.f
 * JD-Core Version:    0.6.2
 */