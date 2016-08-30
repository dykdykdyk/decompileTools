package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class an
  implements Parcelable.Creator<GetServiceRequest>
{
  static void a(GetServiceRequest paramGetServiceRequest, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramGetServiceRequest.a);
    a.a(paramParcel, 2, paramGetServiceRequest.b);
    a.a(paramParcel, 3, paramGetServiceRequest.c);
    a.a(paramParcel, 4, paramGetServiceRequest.d);
    a.a(paramParcel, 5, paramGetServiceRequest.e);
    a.a(paramParcel, 6, paramGetServiceRequest.f, paramInt);
    a.a(paramParcel, 7, paramGetServiceRequest.g);
    a.a(paramParcel, 8, paramGetServiceRequest.h, paramInt);
    a.a(paramParcel, 9, paramGetServiceRequest.i);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.an
 * JD-Core Version:    0.6.2
 */