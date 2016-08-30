package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class PositionRecord
  implements Parcelable
{
  public static final Parcelable.Creator<PositionRecord> CREATOR = new q();

  @SerializedName("appCreateTime")
  public long a;

  @SerializedName("createTime")
  public long b;

  @SerializedName("articleStatus")
  public String c;

  @SerializedName("longitude")
  public double d;

  @SerializedName("latitude")
  public double e;

  @SerializedName("height")
  public int f;

  @SerializedName("uuid")
  public String g;

  public PositionRecord()
  {
  }

  protected PositionRecord(Parcel paramParcel)
  {
    this.a = paramParcel.readLong();
    this.b = paramParcel.readLong();
    this.c = paramParcel.readString();
    this.d = paramParcel.readDouble();
    this.e = paramParcel.readDouble();
    this.f = paramParcel.readInt();
    this.g = paramParcel.readString();
  }

  public final boolean a()
  {
    return (this.e != 0.0D) && (this.d != 0.0D);
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.a);
    paramParcel.writeLong(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeDouble(this.d);
    paramParcel.writeDouble(this.e);
    paramParcel.writeInt(this.f);
    paramParcel.writeString(this.g);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.PositionRecord
 * JD-Core Version:    0.6.2
 */