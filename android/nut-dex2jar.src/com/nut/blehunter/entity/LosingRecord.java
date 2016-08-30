package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class LosingRecord
  implements Parcelable
{
  public static final Parcelable.Creator<LosingRecord> CREATOR = new j();

  @SerializedName("uuid")
  public String a;

  @SerializedName("createTime")
  public long b;

  @SerializedName("contactPhoneNumber")
  public Mobile c;

  @SerializedName("traceRegion")
  public String d;

  public LosingRecord()
  {
  }

  private LosingRecord(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readLong();
    this.c = ((Mobile)paramParcel.readParcelable(Mobile.class.getClassLoader()));
    this.d = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeLong(this.b);
    paramParcel.writeParcelable(this.c, paramInt);
    paramParcel.writeString(this.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.LosingRecord
 * JD-Core Version:    0.6.2
 */