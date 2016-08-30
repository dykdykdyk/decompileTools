package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.i;

public final class GroundOverlayOptions
  implements SafeParcelable
{
  public static final l CREATOR = new l();
  final int a;
  a b;
  LatLng c;
  float d;
  float e;
  LatLngBounds f;
  float g;
  float h;
  boolean i = true;
  float j = 0.0F;
  float k = 0.5F;
  float l = 0.5F;
  boolean m = false;

  public GroundOverlayOptions()
  {
    this.a = 1;
  }

  GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean1, float paramFloat5, float paramFloat6, float paramFloat7, boolean paramBoolean2)
  {
    this.a = paramInt;
    this.b = new a(i.a(paramIBinder));
    this.c = paramLatLng;
    this.d = paramFloat1;
    this.e = paramFloat2;
    this.f = paramLatLngBounds;
    this.g = paramFloat3;
    this.h = paramFloat4;
    this.i = paramBoolean1;
    this.j = paramFloat5;
    this.k = paramFloat6;
    this.l = paramFloat7;
    this.m = paramBoolean2;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    l.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlayOptions
 * JD-Core Version:    0.6.2
 */