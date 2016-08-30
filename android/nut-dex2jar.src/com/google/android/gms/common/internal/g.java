package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class g
  implements Parcelable.Creator<ValidateAccountRequest>
{
  static void a(ValidateAccountRequest paramValidateAccountRequest, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramValidateAccountRequest.a);
    a.a(paramParcel, 2, paramValidateAccountRequest.b);
    a.a(paramParcel, 3, paramValidateAccountRequest.c);
    a.a(paramParcel, 4, paramValidateAccountRequest.d, paramInt);
    a.a(paramParcel, 5, paramValidateAccountRequest.e);
    a.a(paramParcel, 6, paramValidateAccountRequest.f);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.g
 * JD-Core Version:    0.6.2
 */