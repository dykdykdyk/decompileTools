package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.mapcore2d.cw;
import com.amap.api.mapcore2d.cy;
import com.amap.api.mapcore2d.cz;

public final class CameraPosition
  implements Parcelable
{
  public static final b CREATOR = new b();
  public final float bearing;
  public final boolean isAbroad;
  public final LatLng target;
  public final float tilt;
  public final float zoom;

  public CameraPosition(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    cw.a(paramLatLng, "CameraPosition 位置不能为null");
    this.target = paramLatLng;
    this.zoom = cz.b(paramFloat1);
    this.tilt = cz.a(paramFloat2);
    paramFloat1 = paramFloat3;
    if (paramFloat3 <= 0.0D)
      paramFloat1 = paramFloat3 % 360.0F + 360.0F;
    this.bearing = (paramFloat1 % 360.0F);
    if (!cy.a(paramLatLng.latitude, paramLatLng.longitude));
    for (boolean bool = true; ; bool = false)
    {
      this.isAbroad = bool;
      return;
    }
  }

  public static CameraPosition.Builder builder()
  {
    return new CameraPosition.Builder();
  }

  public static CameraPosition.Builder builder(CameraPosition paramCameraPosition)
  {
    return new CameraPosition.Builder(paramCameraPosition);
  }

  public static final CameraPosition fromLatLngZoom(LatLng paramLatLng, float paramFloat)
  {
    return new CameraPosition(paramLatLng, paramFloat, 0.0F, 0.0F);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (!(paramObject instanceof CameraPosition))
        return false;
      paramObject = (CameraPosition)paramObject;
    }
    while ((this.target.equals(paramObject.target)) && (Float.floatToIntBits(this.zoom) == Float.floatToIntBits(paramObject.zoom)) && (Float.floatToIntBits(this.tilt) == Float.floatToIntBits(paramObject.tilt)) && (Float.floatToIntBits(this.bearing) == Float.floatToIntBits(paramObject.bearing)));
    return false;
  }

  public final int hashCode()
  {
    return super.hashCode();
  }

  public final String toString()
  {
    return cz.a(new String[] { cz.a("target", this.target), cz.a("zoom", Float.valueOf(this.zoom)), cz.a("tilt", Float.valueOf(this.tilt)), cz.a("bearing", Float.valueOf(this.bearing)) });
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeFloat(this.bearing);
    paramParcel.writeFloat((float)this.target.latitude);
    paramParcel.writeFloat((float)this.target.longitude);
    paramParcel.writeFloat(this.tilt);
    paramParcel.writeFloat(this.zoom);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.CameraPosition
 * JD-Core Version:    0.6.2
 */