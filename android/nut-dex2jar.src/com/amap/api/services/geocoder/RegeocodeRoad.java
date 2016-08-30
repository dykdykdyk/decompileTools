package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public final class RegeocodeRoad
  implements Parcelable
{
  public static final Parcelable.Creator<RegeocodeRoad> CREATOR = new e();
  private String a;
  private String b;
  private float c;
  private String d;
  private LatLonPoint e;

  public RegeocodeRoad()
  {
  }

  private RegeocodeRoad(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readFloat();
    this.d = paramParcel.readString();
    this.e = ((LatLonPoint)paramParcel.readValue(LatLonPoint.class.getClassLoader()));
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String getDirection()
  {
    return this.d;
  }

  public final float getDistance()
  {
    return this.c;
  }

  public final String getId()
  {
    return this.a;
  }

  public final LatLonPoint getLatLngPoint()
  {
    return this.e;
  }

  public final String getName()
  {
    return this.b;
  }

  public final void setDirection(String paramString)
  {
    this.d = paramString;
  }

  public final void setDistance(float paramFloat)
  {
    this.c = paramFloat;
  }

  public final void setId(String paramString)
  {
    this.a = paramString;
  }

  public final void setLatLngPoint(LatLonPoint paramLatLonPoint)
  {
    this.e = paramLatLonPoint;
  }

  public final void setName(String paramString)
  {
    this.b = paramString;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeFloat(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeValue(this.e);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.RegeocodeRoad
 * JD-Core Version:    0.6.2
 */