package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class SignInRequest extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<SignInRequest> CREATOR = new k();
  final int a;
  final ResolveAccountRequest b;

  SignInRequest(int paramInt, ResolveAccountRequest paramResolveAccountRequest)
  {
    this.a = paramInt;
    this.b = paramResolveAccountRequest;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.SignInRequest
 * JD-Core Version:    0.6.2
 */