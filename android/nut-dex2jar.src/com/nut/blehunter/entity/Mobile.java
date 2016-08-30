package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class Mobile
  implements Parcelable
{
  public static final Parcelable.Creator<Mobile> CREATOR = new l();

  @SerializedName("country_code")
  public String a;

  @SerializedName("phone_number")
  public String b;

  public Mobile()
  {
  }

  private Mobile(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.Mobile
 * JD-Core Version:    0.6.2
 */