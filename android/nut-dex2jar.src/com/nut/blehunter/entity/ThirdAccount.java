package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class ThirdAccount
  implements Parcelable
{
  public static final Parcelable.Creator<ThirdAccount> CREATOR = new y();

  @SerializedName("type")
  public int a;

  @SerializedName("createTime")
  public long b;

  @SerializedName("updateTime")
  public long c;

  @SerializedName("uuid")
  public String d;

  @SerializedName("openId")
  public String e;

  @SerializedName("nickName")
  public String f;

  public ThirdAccount()
  {
  }

  protected ThirdAccount(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readLong();
    this.c = paramParcel.readLong();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeLong(this.b);
    paramParcel.writeLong(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.ThirdAccount
 * JD-Core Version:    0.6.2
 */