package com.amap.api.services.road;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class Crossroad extends Road
  implements Parcelable
{
  public static final Parcelable.Creator<Crossroad> CREATOR = new a();
  private float a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;

  public Crossroad()
  {
  }

  private Crossroad(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readFloat();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String getDirection()
  {
    return this.b;
  }

  public final float getDistance()
  {
    return this.a;
  }

  public final String getFirstRoadId()
  {
    return this.c;
  }

  public final String getFirstRoadName()
  {
    return this.d;
  }

  public final String getSecondRoadId()
  {
    return this.e;
  }

  public final String getSecondRoadName()
  {
    return this.f;
  }

  public final void setDirection(String paramString)
  {
    this.b = paramString;
  }

  public final void setDistance(float paramFloat)
  {
    this.a = paramFloat;
  }

  public final void setFirstRoadId(String paramString)
  {
    this.c = paramString;
  }

  public final void setFirstRoadName(String paramString)
  {
    this.d = paramString;
  }

  public final void setSecondRoadId(String paramString)
  {
    this.e = paramString;
  }

  public final void setSecondRoadName(String paramString)
  {
    this.f = paramString;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeFloat(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.road.Crossroad
 * JD-Core Version:    0.6.2
 */