package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class Scope extends AbstractSafeParcelable
{
  public static final Parcelable.Creator<Scope> CREATOR = new z();
  final int a;
  public final String b;

  Scope(int paramInt, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException(String.valueOf("scopeUri must not be null or empty"));
    this.a = paramInt;
    this.b = paramString;
  }

  public Scope(String paramString)
  {
    this(1, paramString);
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject)
      return true;
    if (!(paramObject instanceof Scope))
      return false;
    return this.b.equals(((Scope)paramObject).b);
  }

  public final int hashCode()
  {
    return this.b.hashCode();
  }

  public final String toString()
  {
    return this.b;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    z.a(this, paramParcel);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.Scope
 * JD-Core Version:    0.6.2
 */