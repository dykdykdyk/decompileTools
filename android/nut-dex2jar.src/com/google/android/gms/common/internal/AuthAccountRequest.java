package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AuthAccountRequest extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new h();
  final int a;
  final IBinder b;
  final Scope[] c;
  Integer d;
  Integer e;

  AuthAccountRequest(int paramInt, IBinder paramIBinder, Scope[] paramArrayOfScope, Integer paramInteger1, Integer paramInteger2)
  {
    this.a = paramInt;
    this.b = paramIBinder;
    this.c = paramArrayOfScope;
    this.d = paramInteger1;
    this.e = paramInteger2;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    h.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.AuthAccountRequest
 * JD-Core Version:    0.6.2
 */