package com.amap.api.maps2d.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.mapcore2d.cw;

public final class GroundOverlayOptions
  implements Parcelable
{
  public static final d CREATOR = new d();
  public static final float NO_DIMENSION = -1.0F;
  private final int a;
  private BitmapDescriptor b;
  private LatLng c;
  private float d;
  private float e;
  private LatLngBounds f;
  private float g;
  private float h;
  private boolean i = true;
  private float j = 0.0F;
  private float k = 0.5F;
  private float l = 0.5F;

  public GroundOverlayOptions()
  {
    this.a = 1;
  }

  GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    this.a = paramInt;
    this.b = BitmapDescriptorFactory.fromBitmap(null);
    this.c = paramLatLng;
    this.d = paramFloat1;
    this.e = paramFloat2;
    this.f = paramLatLngBounds;
    this.g = paramFloat3;
    this.h = paramFloat4;
    this.i = paramBoolean;
    this.j = paramFloat5;
    this.k = paramFloat6;
    this.l = paramFloat7;
  }

  private GroundOverlayOptions a(LatLng paramLatLng, float paramFloat1, float paramFloat2)
  {
    this.c = paramLatLng;
    this.d = paramFloat1;
    this.e = paramFloat2;
    return this;
  }

  public final GroundOverlayOptions anchor(float paramFloat1, float paramFloat2)
  {
    this.k = paramFloat1;
    this.l = paramFloat2;
    return this;
  }

  public final GroundOverlayOptions bearing(float paramFloat)
  {
    this.g = paramFloat;
    return this;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final float getAnchorU()
  {
    return this.k;
  }

  public final float getAnchorV()
  {
    return this.l;
  }

  public final float getBearing()
  {
    return this.g;
  }

  public final LatLngBounds getBounds()
  {
    return this.f;
  }

  public final float getHeight()
  {
    return this.e;
  }

  public final BitmapDescriptor getImage()
  {
    return this.b;
  }

  public final LatLng getLocation()
  {
    return this.c;
  }

  public final float getTransparency()
  {
    return this.j;
  }

  public final float getWidth()
  {
    return this.d;
  }

  public final float getZIndex()
  {
    return this.h;
  }

  public final GroundOverlayOptions image(BitmapDescriptor paramBitmapDescriptor)
  {
    this.b = paramBitmapDescriptor;
    return this;
  }

  public final boolean isVisible()
  {
    return this.i;
  }

  public final GroundOverlayOptions position(LatLng paramLatLng, float paramFloat)
  {
    boolean bool2 = true;
    if (this.f == null)
    {
      bool1 = true;
      cw.a(bool1, "Position has already been set using positionFromBounds");
      if (paramLatLng == null)
        break label58;
      bool1 = true;
      label24: cw.b(bool1, "Location must be specified");
      if (paramFloat < 0.0F)
        break label63;
    }
    label58: label63: for (boolean bool1 = bool2; ; bool1 = false)
    {
      cw.b(bool1, "Width must be non-negative");
      return a(paramLatLng, paramFloat, paramFloat);
      bool1 = false;
      break;
      bool1 = false;
      break label24;
    }
  }

  public final GroundOverlayOptions position(LatLng paramLatLng, float paramFloat1, float paramFloat2)
  {
    boolean bool2 = true;
    if (this.f == null)
    {
      bool1 = true;
      cw.a(bool1, "Position has already been set using positionFromBounds");
      if (paramLatLng == null)
        break label81;
      bool1 = true;
      label27: cw.b(bool1, "Location must be specified");
      if (paramFloat1 < 0.0F)
        break label87;
      bool1 = true;
      label43: cw.b(bool1, "Width must be non-negative");
      if (paramFloat2 < 0.0F)
        break label93;
    }
    label81: label87: label93: for (boolean bool1 = bool2; ; bool1 = false)
    {
      cw.b(bool1, "Height must be non-negative");
      return a(paramLatLng, paramFloat1, paramFloat2);
      bool1 = false;
      break;
      bool1 = false;
      break label27;
      bool1 = false;
      break label43;
    }
  }

  public final GroundOverlayOptions positionFromBounds(LatLngBounds paramLatLngBounds)
  {
    if (this.c == null);
    for (boolean bool = true; ; bool = false)
    {
      cw.a(bool, "Position has already been set using position: " + this.c);
      this.f = paramLatLngBounds;
      return this;
    }
  }

  public final GroundOverlayOptions transparency(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F));
    for (boolean bool = true; ; bool = false)
    {
      cw.b(bool, "Transparency must be in the range [0..1]");
      this.j = paramFloat;
      return this;
    }
  }

  public final GroundOverlayOptions visible(boolean paramBoolean)
  {
    this.i = paramBoolean;
    return this;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeParcelable(this.b, paramInt);
    paramParcel.writeParcelable(this.c, paramInt);
    paramParcel.writeFloat(this.d);
    paramParcel.writeFloat(this.e);
    paramParcel.writeParcelable(this.f, paramInt);
    paramParcel.writeFloat(this.g);
    paramParcel.writeFloat(this.h);
    if (this.i);
    for (paramInt = 1; ; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeFloat(this.j);
      paramParcel.writeFloat(this.k);
      paramParcel.writeFloat(this.l);
      return;
    }
  }

  public final GroundOverlayOptions zIndex(float paramFloat)
  {
    this.h = paramFloat;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.GroundOverlayOptions
 * JD-Core Version:    0.6.2
 */