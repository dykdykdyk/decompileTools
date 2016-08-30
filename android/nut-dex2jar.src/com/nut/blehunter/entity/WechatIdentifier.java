package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class WechatIdentifier
  implements Parcelable
{
  public static final Parcelable.Creator<WechatIdentifier> CREATOR = new ab();

  @SerializedName("buuid")
  public String a;

  @SerializedName("bmajor")
  public int b;

  @SerializedName("bminor")
  public int c;

  public WechatIdentifier()
  {
  }

  protected WechatIdentifier(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.WechatIdentifier
 * JD-Core Version:    0.6.2
 */