package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class CommonPushMsg
  implements Parcelable
{
  public static final Parcelable.Creator<CommonPushMsg> CREATOR = new a();

  @SerializedName("event")
  public String a;

  @SerializedName("position")
  public Position b;

  @SerializedName("articleUUID")
  public String c;

  @SerializedName("tagId")
  public String d;

  @SerializedName("articleName")
  public String e;

  @SerializedName("itemPictureUrl")
  public String f;

  @SerializedName("userName")
  public String g;

  @SerializedName("userAvatarUrl")
  public String h;

  @SerializedName("timestamp")
  public long i;

  public CommonPushMsg()
  {
  }

  protected CommonPushMsg(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = ((Position)paramParcel.readParcelable(Position.class.getClassLoader()));
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
    this.i = paramParcel.readLong();
  }

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    return "CommonPushMsg{event='" + this.a + '\'' + ", position=" + this.b + ", articleUUID='" + this.c + '\'' + ", tagId='" + this.d + '\'' + ", articleName='" + this.e + '\'' + ", itemPictureUrl='" + this.f + '\'' + ", userName='" + this.g + '\'' + ", userAvatarUrl='" + this.h + '\'' + ", timestamp=" + this.i + '}';
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeParcelable(this.b, 0);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeLong(this.i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.CommonPushMsg
 * JD-Core Version:    0.6.2
 */