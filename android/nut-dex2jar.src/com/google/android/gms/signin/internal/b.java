package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class b
  implements Parcelable.Creator<CheckServerAuthResult>
{
  static void a(CheckServerAuthResult paramCheckServerAuthResult, Parcel paramParcel)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramCheckServerAuthResult.a);
    a.a(paramParcel, 2, paramCheckServerAuthResult.b);
    a.a(paramParcel, 3, paramCheckServerAuthResult.c);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.b
 * JD-Core Version:    0.6.2
 */