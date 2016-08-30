package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class RecordConsentRequest extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<RecordConsentRequest> CREATOR = new i();
  final int a;
  final Account b;
  final Scope[] c;
  final String d;

  RecordConsentRequest(int paramInt, Account paramAccount, Scope[] paramArrayOfScope, String paramString)
  {
    this.a = paramInt;
    this.b = paramAccount;
    this.c = paramArrayOfScope;
    this.d = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.RecordConsentRequest
 * JD-Core Version:    0.6.2
 */