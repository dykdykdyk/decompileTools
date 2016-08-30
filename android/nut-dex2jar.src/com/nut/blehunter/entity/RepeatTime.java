package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class RepeatTime
  implements Parcelable
{
  public static final Parcelable.Creator<RepeatTime> CREATOR = new s();

  @SerializedName("type")
  public int a;

  @SerializedName("value")
  public int b = 0;

  public RepeatTime()
  {
    while (i < 7)
    {
      this.b |= 1 << i;
      i += 1;
    }
    this.a = 1;
  }

  public RepeatTime(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readInt();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.RepeatTime
 * JD-Core Version:    0.6.2
 */