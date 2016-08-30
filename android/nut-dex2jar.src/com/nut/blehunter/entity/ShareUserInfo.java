package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class ShareUserInfo
  implements Parcelable
{
  public static final Parcelable.Creator<ShareUserInfo> CREATOR = new v();

  @SerializedName("userUUID")
  public String a;

  @SerializedName("name")
  public String b;

  @SerializedName("gender")
  public int c;

  @SerializedName("avatarUrl")
  public String d;

  @SerializedName("shareTime")
  public long e;

  @SerializedName("acceptTime")
  public long f;

  public ShareUserInfo()
  {
  }

  protected ShareUserInfo(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readString();
    this.e = paramParcel.readLong();
    this.f = paramParcel.readLong();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeLong(this.e);
    paramParcel.writeLong(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.ShareUserInfo
 * JD-Core Version:    0.6.2
 */