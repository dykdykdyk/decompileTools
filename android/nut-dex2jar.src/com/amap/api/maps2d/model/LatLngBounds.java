package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.mapcore2d.cw;
import com.amap.api.mapcore2d.cz;

public final class LatLngBounds
  implements Parcelable
{
  public static final e CREATOR = new e();
  private final int a;
  public final LatLng northeast;
  public final LatLng southwest;

  LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    cw.a(paramLatLng1, "null southwest");
    cw.a(paramLatLng2, "null northeast");
    if (paramLatLng2.latitude >= paramLatLng1.latitude);
    for (boolean bool = true; ; bool = false)
    {
      cw.a(bool, "southern latitude exceeds northern latitude (%s > %s)", new Object[] { Double.valueOf(paramLatLng1.latitude), Double.valueOf(paramLatLng2.latitude) });
      this.a = paramInt;
      this.southwest = paramLatLng1;
      this.northeast = paramLatLng2;
      return;
    }
  }

  public LatLngBounds(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    this(1, paramLatLng1, paramLatLng2);
  }

  private boolean a(double paramDouble)
  {
    return (this.southwest.latitude <= paramDouble) && (paramDouble <= this.northeast.latitude);
  }

  private boolean a(LatLngBounds paramLatLngBounds)
  {
    if ((paramLatLngBounds == null) || (paramLatLngBounds.northeast == null) || (paramLatLngBounds.southwest == null) || (this.northeast == null) || (this.southwest == null));
    double d1;
    double d2;
    double d3;
    double d4;
    double d5;
    double d6;
    double d7;
    double d8;
    double d9;
    double d10;
    double d11;
    double d12;
    double d13;
    double d14;
    double d15;
    double d16;
    do
    {
      return false;
      d1 = paramLatLngBounds.northeast.longitude;
      d2 = paramLatLngBounds.southwest.longitude;
      d3 = this.northeast.longitude;
      d4 = this.southwest.longitude;
      d5 = this.northeast.longitude;
      d6 = this.southwest.longitude;
      d7 = paramLatLngBounds.northeast.longitude;
      d8 = this.southwest.longitude;
      d9 = paramLatLngBounds.northeast.latitude;
      d10 = paramLatLngBounds.southwest.latitude;
      d11 = this.northeast.latitude;
      d12 = this.southwest.latitude;
      d13 = this.northeast.latitude;
      d14 = this.southwest.latitude;
      d15 = paramLatLngBounds.northeast.latitude;
      d16 = paramLatLngBounds.southwest.latitude;
    }
    while ((Math.abs(d1 + d2 - d3 - d4) >= d5 - d6 + d7 - d8) || (Math.abs(d9 + d10 - d11 - d12) >= d13 - d14 + d15 - d16));
    return true;
  }

  private boolean b(double paramDouble)
  {
    if (this.southwest.longitude <= this.northeast.longitude)
      if ((this.southwest.longitude > paramDouble) || (paramDouble > this.northeast.longitude));
    while ((this.southwest.longitude <= paramDouble) || (paramDouble <= this.northeast.longitude))
    {
      return true;
      return false;
    }
    return false;
  }

  public static LatLngBounds.Builder builder()
  {
    return new LatLngBounds.Builder();
  }

  private static double c(double paramDouble1, double paramDouble2)
  {
    return (paramDouble1 - paramDouble2 + 360.0D) % 360.0D;
  }

  private static double d(double paramDouble1, double paramDouble2)
  {
    return (paramDouble2 - paramDouble1 + 360.0D) % 360.0D;
  }

  final int a()
  {
    return this.a;
  }

  public final boolean contains(LatLng paramLatLng)
  {
    return (a(paramLatLng.latitude)) && (b(paramLatLng.longitude));
  }

  public final boolean contains(LatLngBounds paramLatLngBounds)
  {
    if (paramLatLngBounds == null);
    while ((!contains(paramLatLngBounds.southwest)) || (!contains(paramLatLngBounds.northeast)))
      return false;
    return true;
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
      if (!(paramObject instanceof LatLngBounds))
        return false;
      paramObject = (LatLngBounds)paramObject;
    }
    while ((this.southwest.equals(paramObject.southwest)) && (this.northeast.equals(paramObject.northeast)));
    return false;
  }

  public final int hashCode()
  {
    return cz.a(new Object[] { this.southwest, this.northeast });
  }

  public final LatLngBounds including(LatLng paramLatLng)
  {
    double d1 = Math.min(this.southwest.latitude, paramLatLng.latitude);
    double d2 = Math.max(this.northeast.latitude, paramLatLng.latitude);
    double d3 = this.northeast.longitude;
    double d4 = this.southwest.longitude;
    double d5 = paramLatLng.longitude;
    if (!b(d5))
    {
      c(d4, d5);
      d(d3, d5);
    }
    return new LatLngBounds(new LatLng(d1, d5), new LatLng(d2, d5));
  }

  public final boolean intersects(LatLngBounds paramLatLngBounds)
  {
    if (paramLatLngBounds == null);
    while ((!a(paramLatLngBounds)) && (!paramLatLngBounds.a(this)))
      return false;
    return true;
  }

  public final String toString()
  {
    return cz.a(new String[] { cz.a("southwest", this.southwest), cz.a("northeast", this.northeast) });
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.LatLngBounds
 * JD-Core Version:    0.6.2
 */