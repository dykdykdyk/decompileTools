package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class k
  implements Parcelable.Creator<SignInRequest>
{
  static void a(SignInRequest paramSignInRequest, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramSignInRequest.a);
    a.a(paramParcel, 2, paramSignInRequest.b, paramInt);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.k
 * JD-Core Version:    0.6.2
 */