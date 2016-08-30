package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class MapRegion
  implements Parcelable
{
  public static final Parcelable.Creator<MapRegion> CREATOR = new k();

  @SerializedName("address")
  public String a;

  @SerializedName("latitude")
  public double b;

  @SerializedName("longitude")
  public double c;

  @SerializedName("radius")
  public int d;

  public MapRegion()
  {
  }

  private MapRegion(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readDouble();
    this.c = paramParcel.readDouble();
    this.d = paramParcel.readInt();
  }

  public final boolean a()
  {
    return (this.d > 0) && (this.b != 0.0D) && (this.c != 0.0D);
  }

  public final b b()
  {
    return new b(this.b, this.c);
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeDouble(this.b);
    paramParcel.writeDouble(this.c);
    paramParcel.writeInt(this.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.MapRegion
 * JD-Core Version:    0.6.2
 */