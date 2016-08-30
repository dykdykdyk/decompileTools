package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class Wechat
  implements Parcelable
{
  public static final Parcelable.Creator<Wechat> CREATOR = new aa();

  @SerializedName("open_id")
  public String a;

  @SerializedName("nick_name")
  public String b;

  @SerializedName("login_name")
  public String c;

  @SerializedName("sex")
  public int d;

  @SerializedName("province")
  public String e;

  @SerializedName("country")
  public String f;

  @SerializedName("language")
  public String g;

  @SerializedName("head_img_url")
  public String h;

  public Wechat()
  {
  }

  protected Wechat(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readInt();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.Wechat
 * JD-Core Version:    0.6.2
 */