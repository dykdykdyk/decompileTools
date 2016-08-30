package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class d
  implements Parcelable.Creator<ResolveAccountResponse>
{
  static void a(ResolveAccountResponse paramResolveAccountResponse, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramResolveAccountResponse.a);
    a.a(paramParcel, 2, paramResolveAccountResponse.b);
    a.a(paramParcel, 3, paramResolveAccountResponse.c, paramInt);
    a.a(paramParcel, 4, paramResolveAccountResponse.d);
    a.a(paramParcel, 5, paramResolveAccountResponse.e);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.d
 * JD-Core Version:    0.6.2
 */