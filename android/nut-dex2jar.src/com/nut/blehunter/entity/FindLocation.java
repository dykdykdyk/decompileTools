package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class FindLocation
  implements Parcelable
{
  public static final Parcelable.Creator<FindLocation> CREATOR = new g();

  @SerializedName("tagId")
  public String a;

  @SerializedName("lost")
  public Position b;

  @SerializedName("address")
  public String c;

  public FindLocation()
  {
  }

  private FindLocation(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = ((Position)paramParcel.readParcelable(Position.class.getClassLoader()));
    this.c = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    return "FindLocation{tagId='" + this.a + '\'' + ", lost=" + this.b + ", address='" + this.c + '\'' + '}';
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeParcelable(this.b, 0);
    paramParcel.writeString(this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.FindLocation
 * JD-Core Version:    0.6.2
 */