package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;

public class Silence
  implements Parcelable
{
  public static final Parcelable.Creator<Silence> CREATOR = new w();

  @SerializedName("name")
  public String a;

  @SerializedName("startTime")
  public int b;

  @SerializedName("endTime")
  public int c;

  @SerializedName("repeat")
  public List<RepeatTime> d = new ArrayList();

  @SerializedName("uuid")
  public String e;

  public Silence()
  {
    this.d.add(new RepeatTime());
  }

  public Silence(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    paramParcel.readList(this.d, getClass().getClassLoader());
    this.e = paramParcel.readString();
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    while (!(paramObject instanceof Silence))
      return false;
    if (this == paramObject)
      return true;
    paramObject = (Silence)paramObject;
    return this.e.equals(paramObject.e);
  }

  public int hashCode()
  {
    return this.e.hashCode();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeList(this.d);
    paramParcel.writeString(this.e);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.Silence
 * JD-Core Version:    0.6.2
 */