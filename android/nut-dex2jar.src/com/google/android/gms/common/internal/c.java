package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class c
  implements Parcelable.Creator<ResolveAccountRequest>
{
  static void a(ResolveAccountRequest paramResolveAccountRequest, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramResolveAccountRequest.a);
    a.a(paramParcel, 2, paramResolveAccountRequest.b, paramInt);
    a.a(paramParcel, 3, paramResolveAccountRequest.c);
    a.a(paramParcel, 4, paramResolveAccountRequest.d, paramInt);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.c
 * JD-Core Version:    0.6.2
 */