package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class b
  implements Parcelable.Creator<GoogleSignInAccount>
{
  static void a(GoogleSignInAccount paramGoogleSignInAccount, Parcel paramParcel, int paramInt)
  {
    int i = a.a(paramParcel, 20293);
    a.a(paramParcel, 1, paramGoogleSignInAccount.b);
    a.a(paramParcel, 2, paramGoogleSignInAccount.c);
    a.a(paramParcel, 3, paramGoogleSignInAccount.d);
    a.a(paramParcel, 4, paramGoogleSignInAccount.e);
    a.a(paramParcel, 5, paramGoogleSignInAccount.f);
    a.a(paramParcel, 6, paramGoogleSignInAccount.g, paramInt);
    a.a(paramParcel, 7, paramGoogleSignInAccount.h);
    a.a(paramParcel, 8, paramGoogleSignInAccount.i);
    a.a(paramParcel, 9, paramGoogleSignInAccount.j);
    a.a(paramParcel, 10, paramGoogleSignInAccount.k);
    a.a(paramParcel, 11, paramGoogleSignInAccount.l);
    a.a(paramParcel, 12, paramGoogleSignInAccount.m);
    a.b(paramParcel, i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.auth.api.signin.b
 * JD-Core Version:    0.6.2
 */