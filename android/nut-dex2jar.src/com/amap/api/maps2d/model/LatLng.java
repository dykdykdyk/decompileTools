package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

public final class LatLng
  implements Parcelable, Cloneable
{
  public static final f CREATOR = new f();
  private static DecimalFormat a = new DecimalFormat("0.000000", new DecimalFormatSymbols(Locale.US));
  public final double latitude;
  public final double longitude;

  public LatLng(double paramDouble1, double paramDouble2)
  {
    if ((-180.0D <= paramDouble2) && (paramDouble2 < 180.0D));
    for (this.longitude = a(paramDouble2); ; this.longitude = a(((paramDouble2 - 180.0D) % 360.0D + 360.0D) % 360.0D - 180.0D))
    {
      this.latitude = a(Math.max(-90.0D, Math.min(90.0D, paramDouble1)));
      return;
    }
  }

  private static double a(double paramDouble)
  {
    return Double.parseDouble(a.format(paramDouble));
  }

  public final LatLng clone()
  {
    return new LatLng(this.latitude, this.longitude);
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
      if (!(paramObject instanceof LatLng))
        return false;
      paramObject = (LatLng)paramObject;
    }
    while ((Double.doubleToLongBits(this.latitude) == Double.doubleToLongBits(paramObject.latitude)) && (Double.doubleToLongBits(this.longitude) == Double.doubleToLongBits(paramObject.longitude)));
    return false;
  }

  public final int hashCode()
  {
    long l = Double.doubleToLongBits(this.latitude);
    int i = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(this.longitude);
    return (i + 31) * 31 + (int)(l ^ l >>> 32);
  }

  public final String toString()
  {
    return "lat/lng: (" + this.latitude + "," + this.longitude + ")";
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(this.longitude);
    paramParcel.writeDouble(this.latitude);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.LatLng
 * JD-Core Version:    0.6.2
 */