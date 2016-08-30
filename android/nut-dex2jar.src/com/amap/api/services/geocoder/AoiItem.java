package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class AoiItem
  implements Parcelable
{
  public static final Parcelable.Creator<AoiItem> CREATOR = new a();
  private String a;
  private String b;
  private String c;
  private LatLonPoint d;
  private Float e;

  public AoiItem()
  {
  }

  public AoiItem(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = ((LatLonPoint)paramParcel.readParcelable(LatLonPoint.class.getClassLoader()));
    this.e = Float.valueOf(paramParcel.readFloat());
  }

  public int describeContents()
  {
    return 0;
  }

  public String getAdCode()
  {
    return this.c;
  }

  public Float getAoiArea()
  {
    return this.e;
  }

  public LatLonPoint getAoiCenterPoint()
  {
    return this.d;
  }

  public String getAoiId()
  {
    return this.a;
  }

  public String getAoiName()
  {
    return this.b;
  }

  public void setAdcode(String paramString)
  {
    this.c = paramString;
  }

  public void setArea(Float paramFloat)
  {
    this.e = paramFloat;
  }

  public void setId(String paramString)
  {
    this.a = paramString;
  }

  public void setLocation(LatLonPoint paramLatLonPoint)
  {
    this.d = paramLatLonPoint;
  }

  public void setName(String paramString)
  {
    this.b = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeParcelable(this.d, paramInt);
    paramParcel.writeFloat(this.e.floatValue());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.AoiItem
 * JD-Core Version:    0.6.2
 */