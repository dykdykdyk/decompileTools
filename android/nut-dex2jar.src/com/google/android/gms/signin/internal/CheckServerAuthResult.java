package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;

public class CheckServerAuthResult extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<CheckServerAuthResult> CREATOR = new b();
  final int a;
  final boolean b;
  final List<Scope> c;

  CheckServerAuthResult(int paramInt, boolean paramBoolean, List<Scope> paramList)
  {
    this.a = paramInt;
    this.b = paramBoolean;
    this.c = paramList;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.CheckServerAuthResult
 * JD-Core Version:    0.6.2
 */