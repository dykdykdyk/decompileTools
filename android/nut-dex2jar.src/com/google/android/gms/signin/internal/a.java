package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class a
  implements Parcelable.Creator<AuthAccountResult>
{
  static void a(AuthAccountResult paramAuthAccountResult, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 20293);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 1, paramAuthAccountResult.a);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 2, paramAuthAccountResult.b);
    com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, 3, paramAuthAccountResult.c, paramInt);
    com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.a
 * JD-Core Version:    0.6.2
 */