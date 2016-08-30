package com.amap.api.services.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LatLonSharePoint extends LatLonPoint
  implements Parcelable
{
  public static final Parcelable.Creator<LatLonSharePoint> CREATOR = new p();
  private String a;

  public LatLonSharePoint(double paramDouble1, double paramDouble2, String paramString)
  {
    super(paramDouble1, paramDouble2);
    this.a = paramString;
  }

  protected LatLonSharePoint(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readString();
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
      do
      {
        return true;
        if (!super.equals(paramObject))
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        paramObject = (LatLonSharePoint)paramObject;
        if (this.a != null)
          break;
      }
      while (paramObject.a == null);
      return false;
    }
    while (this.a.equals(paramObject.a));
    return false;
  }

  public String getSharePointName()
  {
    return this.a;
  }

  public int hashCode()
  {
    int j = super.hashCode();
    if (this.a == null);
    for (int i = 0; ; i = this.a.hashCode())
      return i + j * 31;
  }

  public void setSharePointName(String paramString)
  {
    this.a = paramString;
  }

  public String toString()
  {
    return super.toString() + "," + this.a;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.LatLonSharePoint
 * JD-Core Version:    0.6.2
 */