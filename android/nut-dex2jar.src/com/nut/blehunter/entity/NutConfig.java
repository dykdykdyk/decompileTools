package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class NutConfig
  implements Parcelable
{
  public static final Parcelable.Creator<NutConfig> CREATOR = new o();

  @SerializedName("mode")
  public int a;

  @SerializedName("twoWayAntiLost")
  public int b;

  @SerializedName("disconnectRemind")
  public int c;

  @SerializedName("reRemind")
  public int d;

  @SerializedName("remindTime")
  public int e;

  @SerializedName("disconnectRingtone")
  public int f;

  public NutConfig()
  {
  }

  protected NutConfig(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readInt();
    this.e = paramParcel.readInt();
    this.f = paramParcel.readInt();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeInt(this.f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.NutConfig
 * JD-Core Version:    0.6.2
 */