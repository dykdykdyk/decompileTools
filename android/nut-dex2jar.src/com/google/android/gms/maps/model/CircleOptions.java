package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class CircleOptions
  implements SafeParcelable
{
  public static final k CREATOR = new k();
  final int a;
  public LatLng b = null;
  public double c = 0.0D;
  public float d = 10.0F;
  public int e = -16777216;
  public int f = 0;
  float g = 0.0F;
  boolean h = true;

  public CircleOptions()
  {
    this.a = 1;
  }

  CircleOptions(int paramInt1, LatLng paramLatLng, double paramDouble, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean)
  {
    this.a = paramInt1;
    this.b = paramLatLng;
    this.c = paramDouble;
    this.d = paramFloat1;
    this.e = paramInt2;
    this.f = paramInt3;
    this.g = paramFloat2;
    this.h = paramBoolean;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.CircleOptions
 * JD-Core Version:    0.6.2
 */