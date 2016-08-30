package com.amap.api.services.poisearch;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class IndoorData
  implements Parcelable
{
  public static final Parcelable.Creator<IndoorData> CREATOR = new a();
  private String a;
  private int b;
  private String c;

  protected IndoorData(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readString();
  }

  public IndoorData(String paramString1, int paramInt, String paramString2)
  {
    this.a = paramString1;
    this.b = paramInt;
    this.c = paramString2;
  }

  public int describeContents()
  {
    return 0;
  }

  public int getFloor()
  {
    return this.b;
  }

  public String getFloorName()
  {
    return this.c;
  }

  public String getPoiId()
  {
    return this.a;
  }

  public void setFloor(int paramInt)
  {
    this.b = paramInt;
  }

  public void setFloorName(String paramString)
  {
    this.c = paramString;
  }

  public void setPoiId(String paramString)
  {
    this.a = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeString(this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.IndoorData
 * JD-Core Version:    0.6.2
 */