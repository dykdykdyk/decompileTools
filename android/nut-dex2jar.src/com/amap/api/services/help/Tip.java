package com.amap.api.services.help;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class Tip
  implements Parcelable
{
  public static final Parcelable.Creator<Tip> CREATOR = new a();
  private String a;
  private LatLonPoint b;
  private String c;
  private String d;
  private String e;

  public Tip()
  {
  }

  private Tip(Parcel paramParcel)
  {
    this.c = paramParcel.readString();
    this.e = paramParcel.readString();
    this.d = paramParcel.readString();
    this.a = paramParcel.readString();
    this.b = ((LatLonPoint)paramParcel.readValue(LatLonPoint.class.getClassLoader()));
  }

  public int describeContents()
  {
    return 0;
  }

  public String getAdcode()
  {
    return this.e;
  }

  public String getDistrict()
  {
    return this.d;
  }

  public String getName()
  {
    return this.c;
  }

  public String getPoiID()
  {
    return this.a;
  }

  public LatLonPoint getPoint()
  {
    return this.b;
  }

  public void setAdcode(String paramString)
  {
    this.e = paramString;
  }

  public void setDistrict(String paramString)
  {
    this.d = paramString;
  }

  public void setID(String paramString)
  {
    this.a = paramString;
  }

  public void setName(String paramString)
  {
    this.c = paramString;
  }

  public void setPostion(LatLonPoint paramLatLonPoint)
  {
    this.b = paramLatLonPoint;
  }

  public String toString()
  {
    return "name:" + this.c + " district:" + this.d + " adcode:" + this.e;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.a);
    paramParcel.writeValue(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.help.Tip
 * JD-Core Version:    0.6.2
 */