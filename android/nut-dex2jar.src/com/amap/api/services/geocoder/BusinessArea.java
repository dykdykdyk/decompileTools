package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class BusinessArea
  implements Parcelable
{
  public static final Parcelable.Creator<BusinessArea> CREATOR = new b();
  private LatLonPoint a;
  private String b;

  public BusinessArea()
  {
  }

  public BusinessArea(Parcel paramParcel)
  {
    this.a = ((LatLonPoint)paramParcel.readParcelable(LatLonPoint.class.getClassLoader()));
    this.b = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public LatLonPoint getCenterPoint()
  {
    return this.a;
  }

  public String getName()
  {
    return this.b;
  }

  public void setCenterPoint(LatLonPoint paramLatLonPoint)
  {
    this.a = paramLatLonPoint;
  }

  public void setName(String paramString)
  {
    this.b = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeString(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.BusinessArea
 * JD-Core Version:    0.6.2
 */