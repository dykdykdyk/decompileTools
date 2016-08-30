package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.mapcore2d.cz;

public final class VisibleRegion
  implements Parcelable
{
  public static final l CREATOR = new l();
  private final int a;
  public final LatLng farLeft;
  public final LatLng farRight;
  public final LatLngBounds latLngBounds;
  public final LatLng nearLeft;
  public final LatLng nearRight;

  VisibleRegion(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    this.a = paramInt;
    this.nearLeft = paramLatLng1;
    this.nearRight = paramLatLng2;
    this.farLeft = paramLatLng3;
    this.farRight = paramLatLng4;
    this.latLngBounds = paramLatLngBounds;
  }

  public VisibleRegion(LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    this(1, paramLatLng1, paramLatLng2, paramLatLng3, paramLatLng4, paramLatLngBounds);
  }

  final int a()
  {
    return this.a;
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
      if (!(paramObject instanceof VisibleRegion))
        return false;
      paramObject = (VisibleRegion)paramObject;
    }
    while ((this.nearLeft.equals(paramObject.nearLeft)) && (this.nearRight.equals(paramObject.nearRight)) && (this.farLeft.equals(paramObject.farLeft)) && (this.farRight.equals(paramObject.farRight)) && (this.latLngBounds.equals(paramObject.latLngBounds)));
    return false;
  }

  public final int hashCode()
  {
    return cz.a(new Object[] { this.nearLeft, this.nearRight, this.farLeft, this.farRight, this.latLngBounds });
  }

  public final String toString()
  {
    return cz.a(new String[] { cz.a("nearLeft", this.nearLeft), cz.a("nearRight", this.nearRight), cz.a("farLeft", this.farLeft), cz.a("farRight", this.farRight), cz.a("latLngBounds", this.latLngBounds) });
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    l.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.VisibleRegion
 * JD-Core Version:    0.6.2
 */