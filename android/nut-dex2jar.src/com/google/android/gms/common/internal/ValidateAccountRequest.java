package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

@Deprecated
public class ValidateAccountRequest extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<ValidateAccountRequest> CREATOR = new g();
  final int a;
  final int b;
  final IBinder c;
  final Scope[] d;
  final Bundle e;
  final String f;

  ValidateAccountRequest(int paramInt1, int paramInt2, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, String paramString)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramIBinder;
    this.d = paramArrayOfScope;
    this.e = paramBundle;
    this.f = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    g.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.ValidateAccountRequest
 * JD-Core Version:    0.6.2
 */