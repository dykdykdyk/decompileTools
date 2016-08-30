package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.u;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AuthAccountResult extends AbstractSafeParcelable
  implements u
{
  public static final Parcelable.Creator<AuthAccountResult> CREATOR = new a();
  final int a;
  int b;
  Intent c;

  public AuthAccountResult()
  {
    this((byte)0);
  }

  private AuthAccountResult(byte paramByte)
  {
    this(2, 0, null);
  }

  AuthAccountResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramIntent;
  }

  public final Status a()
  {
    if (this.b == 0)
      return Status.a;
    return Status.e;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.AuthAccountResult
 * JD-Core Version:    0.6.2
 */