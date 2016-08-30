package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class l
  implements Parcelable.Creator<SignInResponse>
{
  static void a(SignInResponse paramSignInResponse, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramSignInResponse.a);
    a.a(paramParcel, 2, paramSignInResponse.b, paramInt);
    a.a(paramParcel, 3, paramSignInResponse.c, paramInt);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.l
 * JD-Core Version:    0.6.2
 */