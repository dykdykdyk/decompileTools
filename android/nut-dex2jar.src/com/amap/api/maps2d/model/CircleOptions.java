package com.amap.api.maps2d.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

public final class CircleOptions
  implements Parcelable
{
  public static final c CREATOR = new c();
  String a;
  private LatLng b = null;
  private double c = 0.0D;
  private float d = 10.0F;
  private int e = -16777216;
  private int f = 0;
  private float g = 0.0F;
  private boolean h = true;

  public final CircleOptions center(LatLng paramLatLng)
  {
    this.b = paramLatLng;
    return this;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final CircleOptions fillColor(int paramInt)
  {
    this.f = paramInt;
    return this;
  }

  public final LatLng getCenter()
  {
    return this.b;
  }

  public final int getFillColor()
  {
    return this.f;
  }

  public final double getRadius()
  {
    return this.c;
  }

  public final int getStrokeColor()
  {
    return this.e;
  }

  public final float getStrokeWidth()
  {
    return this.d;
  }

  public final float getZIndex()
  {
    return this.g;
  }

  public final boolean isVisible()
  {
    return this.h;
  }

  public final CircleOptions radius(double paramDouble)
  {
    this.c = paramDouble;
    return this;
  }

  public final CircleOptions strokeColor(int paramInt)
  {
    this.e = paramInt;
    return this;
  }

  public final CircleOptions strokeWidth(float paramFloat)
  {
    this.d = paramFloat;
    return this;
  }

  public final CircleOptions visible(boolean paramBoolean)
  {
    this.h = paramBoolean;
    return this;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    if (this.b != null)
    {
      localBundle.putDouble("lat", this.b.latitude);
      localBundle.putDouble("lng", this.b.longitude);
    }
    paramParcel.writeBundle(localBundle);
    paramParcel.writeDouble(this.c);
    paramParcel.writeFloat(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeInt(this.f);
    paramParcel.writeFloat(this.g);
    if (this.h);
    for (paramInt = 1; ; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeString(this.a);
      return;
    }
  }

  public final CircleOptions zIndex(float paramFloat)
  {
    this.g = paramFloat;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.CircleOptions
 * JD-Core Version:    0.6.2
 */