package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class h
  implements Parcelable.Creator<AuthAccountRequest>
{
  static void a(AuthAccountRequest paramAuthAccountRequest, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramAuthAccountRequest.a);
    a.a(paramParcel, 2, paramAuthAccountRequest.b);
    a.a(paramParcel, 3, paramAuthAccountRequest.c, paramInt);
    a.a(paramParcel, 4, paramAuthAccountRequest.d);
    a.a(paramParcel, 5, paramAuthAccountRequest.e);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.h
 * JD-Core Version:    0.6.2
 */