package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class Email
  implements Parcelable
{
  public static final Parcelable.Creator<Email> CREATOR = new f();

  @SerializedName("email")
  public String a;

  @SerializedName("state")
  public int b;

  public Email()
  {
  }

  protected Email(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
  }

  public Email(String paramString)
  {
    this.a = paramString;
    this.b = 0;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.Email
 * JD-Core Version:    0.6.2
 */