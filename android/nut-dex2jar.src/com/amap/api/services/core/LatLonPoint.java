package com.amap.api.services.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LatLonPoint
  implements Parcelable
{
  public static final Parcelable.Creator<LatLonPoint> CREATOR = new o();
  private double a;
  private double b;

  public LatLonPoint(double paramDouble1, double paramDouble2)
  {
    this.a = paramDouble1;
    this.b = paramDouble2;
  }

  protected LatLonPoint(Parcel paramParcel)
  {
    this.a = paramParcel.readDouble();
    this.b = paramParcel.readDouble();
  }

  public LatLonPoint copy()
  {
    return new LatLonPoint(this.a, this.b);
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      paramObject = (LatLonPoint)paramObject;
      if (Double.doubleToLongBits(this.a) != Double.doubleToLongBits(paramObject.a))
        return false;
    }
    while (Double.doubleToLongBits(this.b) == Double.doubleToLongBits(paramObject.b));
    return false;
  }

  public double getLatitude()
  {
    return this.a;
  }

  public double getLongitude()
  {
    return this.b;
  }

  public int hashCode()
  {
    long l = Double.doubleToLongBits(this.a);
    int i = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(this.b);
    return (i + 31) * 31 + (int)(l ^ l >>> 32);
  }

  public void setLatitude(double paramDouble)
  {
    this.a = paramDouble;
  }

  public void setLongitude(double paramDouble)
  {
    this.b = paramDouble;
  }

  public String toString()
  {
    return this.a + "," + this.b;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(this.a);
    paramParcel.writeDouble(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.LatLonPoint
 * JD-Core Version:    0.6.2
 */