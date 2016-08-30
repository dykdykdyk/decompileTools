package com.amap.api.services.poisearch;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class SubPoiItem
  implements Parcelable
{
  public static final Parcelable.Creator<SubPoiItem> CREATOR = new e();
  private String a;
  private String b;
  private String c;
  private int d;
  private LatLonPoint e;
  private String f;
  private String g;

  public SubPoiItem(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readInt();
    this.e = ((LatLonPoint)paramParcel.readValue(LatLonPoint.class.getClassLoader()));
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
  }

  public SubPoiItem(String paramString1, LatLonPoint paramLatLonPoint, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.e = paramLatLonPoint;
    this.b = paramString2;
    this.f = paramString3;
  }

  public int describeContents()
  {
    return 0;
  }

  public int getDistance()
  {
    return this.d;
  }

  public LatLonPoint getLatLonPoint()
  {
    return this.e;
  }

  public String getPoiId()
  {
    return this.a;
  }

  public String getSnippet()
  {
    return this.f;
  }

  public String getSubName()
  {
    return this.c;
  }

  public String getSubTypeDes()
  {
    return this.g;
  }

  public String getTitle()
  {
    return this.b;
  }

  public void setDistance(int paramInt)
  {
    this.d = paramInt;
  }

  public void setLatLonPoint(LatLonPoint paramLatLonPoint)
  {
    this.e = paramLatLonPoint;
  }

  public void setPoiId(String paramString)
  {
    this.a = paramString;
  }

  public void setSnippet(String paramString)
  {
    this.f = paramString;
  }

  public void setSubName(String paramString)
  {
    this.c = paramString;
  }

  public void setSubTypeDes(String paramString)
  {
    this.g = paramString;
  }

  public void setTitle(String paramString)
  {
    this.b = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeValue(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.SubPoiItem
 * JD-Core Version:    0.6.2
 */