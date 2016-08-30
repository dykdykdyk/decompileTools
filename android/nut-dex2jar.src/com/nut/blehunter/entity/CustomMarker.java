package com.nut.blehunter.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CustomMarker
  implements Parcelable
{
  public static final Parcelable.Creator<CustomMarker> CREATOR = new c();
  public int a;
  public String b;
  public String c;
  public int d;
  public boolean e;
  public long f;
  public double g;
  public double h;

  public CustomMarker(int paramInt, String paramString, Position paramPosition)
  {
    this.a = paramInt;
    this.c = paramString;
    this.d = paramPosition.b;
    this.f = paramPosition.e;
    this.g = paramPosition.d;
    this.h = paramPosition.c;
  }

  protected CustomMarker(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readInt();
    if (paramParcel.readByte() != 0);
    for (boolean bool = true; ; bool = false)
    {
      this.e = bool;
      this.f = paramParcel.readLong();
      this.g = paramParcel.readDouble();
      this.h = paramParcel.readDouble();
      return;
    }
  }

  public final b a()
  {
    return new b(this.g, this.h);
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeInt(this.d);
    if (this.e);
    for (byte b1 = 1; ; b1 = 0)
    {
      paramParcel.writeByte(b1);
      paramParcel.writeLong(this.f);
      paramParcel.writeDouble(this.g);
      paramParcel.writeDouble(this.h);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.entity.CustomMarker
 * JD-Core Version:    0.6.2
 */