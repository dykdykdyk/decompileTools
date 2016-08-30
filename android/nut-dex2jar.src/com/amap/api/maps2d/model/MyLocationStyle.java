package com.amap.api.maps2d.model;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;

public class MyLocationStyle
  implements Parcelable
{
  private BitmapDescriptor a;
  private float b = 0.5F;
  private float c = 0.5F;
  private int d = Color.argb(100, 0, 0, 180);
  private int e = Color.argb(255, 0, 0, 220);
  private float f = 1.0F;

  public MyLocationStyle anchor(float paramFloat1, float paramFloat2)
  {
    this.b = paramFloat1;
    this.c = paramFloat2;
    return this;
  }

  public int describeContents()
  {
    return 0;
  }

  public float getAnchorU()
  {
    return this.b;
  }

  public float getAnchorV()
  {
    return this.c;
  }

  public BitmapDescriptor getMyLocationIcon()
  {
    return this.a;
  }

  public int getRadiusFillColor()
  {
    return this.d;
  }

  public int getStrokeColor()
  {
    return this.e;
  }

  public float getStrokeWidth()
  {
    return this.f;
  }

  public MyLocationStyle myLocationIcon(BitmapDescriptor paramBitmapDescriptor)
  {
    this.a = paramBitmapDescriptor;
    return this;
  }

  public MyLocationStyle radiusFillColor(int paramInt)
  {
    this.d = paramInt;
    return this;
  }

  public MyLocationStyle strokeColor(int paramInt)
  {
    this.e = paramInt;
    return this;
  }

  public MyLocationStyle strokeWidth(float paramFloat)
  {
    this.f = paramFloat;
    return this;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeFloat(this.b);
    paramParcel.writeFloat(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeFloat(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.MyLocationStyle
 * JD-Core Version:    0.6.2
 */