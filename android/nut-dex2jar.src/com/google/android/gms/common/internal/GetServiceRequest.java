package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GetServiceRequest extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<GetServiceRequest> CREATOR = new an();
  final int a;
  final int b;
  int c;
  String d;
  IBinder e;
  Scope[] f;
  Bundle g;
  Account h;
  long i;

  public GetServiceRequest(int paramInt)
  {
    this.a = 3;
    this.c = g.b;
    this.b = paramInt;
  }

  GetServiceRequest(int paramInt1, int paramInt2, int paramInt3, String paramString, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, Account paramAccount, long paramLong)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = paramString;
    if (paramInt1 < 2)
    {
      paramString = null;
      if (paramIBinder != null)
        paramString = a.a(ay.a(paramIBinder));
    }
    for (this.h = paramString; ; this.h = paramAccount)
    {
      this.f = paramArrayOfScope;
      this.g = paramBundle;
      this.i = paramLong;
      return;
      this.e = paramIBinder;
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    an.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.GetServiceRequest
 * JD-Core Version:    0.6.2
 */