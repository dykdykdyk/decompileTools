package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.i;

public final class MarkerOptions
  implements SafeParcelable
{
  public static final o CREATOR = new o();
  final int a;
  LatLng b;
  public String c;
  String d;
  public a e;
  public float f = 0.5F;
  public float g = 1.0F;
  public boolean h;
  boolean i = true;
  boolean j = false;
  float k = 0.0F;
  float l = 0.5F;
  float m = 0.0F;
  float n = 1.0F;

  public MarkerOptions()
  {
    this.a = 1;
  }

  MarkerOptions(int paramInt, LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    this.a = paramInt;
    this.b = paramLatLng;
    this.c = paramString1;
    this.d = paramString2;
    if (paramIBinder == null);
    for (paramLatLng = null; ; paramLatLng = new a(i.a(paramIBinder)))
    {
      this.e = paramLatLng;
      this.f = paramFloat1;
      this.g = paramFloat2;
      this.h = paramBoolean1;
      this.i = paramBoolean2;
      this.j = paramBoolean3;
      this.k = paramFloat3;
      this.l = paramFloat4;
      this.m = paramFloat5;
      this.n = paramFloat6;
      return;
    }
  }

  public final MarkerOptions a(LatLng paramLatLng)
  {
    if (paramLatLng == null)
      throw new IllegalArgumentException("latlng cannot be null - a position is required.");
    this.b = paramLatLng;
    return this;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    o.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.MarkerOptions
 * JD-Core Version:    0.6.2
 */