package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class PointOfInterest
  implements SafeParcelable
{
  public static final p CREATOR = new p();
  final int a;
  public final LatLng b;
  public final String c;
  public final String d;

  PointOfInterest(int paramInt, LatLng paramLatLng, String paramString1, String paramString2)
  {
    this.a = paramInt;
    this.b = paramLatLng;
    this.c = paramString1;
    this.d = paramString2;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    p.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.PointOfInterest
 * JD-Core Version:    0.6.2
 */