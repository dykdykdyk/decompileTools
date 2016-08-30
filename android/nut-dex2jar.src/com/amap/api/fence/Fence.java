package com.amap.api.fence;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.loc.by;

public class Fence
  implements Parcelable
{
  public static final Parcelable.Creator<Fence> CREATOR = new a();
  public PendingIntent a = null;
  public String b = null;
  public double c = 0.0D;
  public double d = 0.0D;
  public float e = 0.0F;
  public long f = -1L;
  public int g = -1;
  public long h = -1L;
  private long i = -1L;
  private int j = 3;

  public Fence()
  {
  }

  private Fence(Parcel paramParcel)
  {
    if (paramParcel != null)
    {
      this.b = paramParcel.readString();
      this.c = paramParcel.readDouble();
      this.d = paramParcel.readDouble();
      this.e = paramParcel.readFloat();
      this.f = paramParcel.readLong();
      this.i = paramParcel.readLong();
      this.j = paramParcel.readInt();
      this.g = paramParcel.readInt();
      this.h = paramParcel.readLong();
    }
  }

  public int a()
  {
    return this.j;
  }

  public void a(long paramLong)
  {
    if (paramLong < 0L)
    {
      this.f = -1L;
      return;
    }
    this.f = (by.b() + paramLong);
  }

  public long b()
  {
    return this.f;
  }

  public long c()
  {
    return this.i;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.b);
    paramParcel.writeDouble(this.c);
    paramParcel.writeDouble(this.d);
    paramParcel.writeFloat(this.e);
    paramParcel.writeLong(this.f);
    paramParcel.writeLong(this.i);
    paramParcel.writeInt(this.j);
    paramParcel.writeInt(this.g);
    paramParcel.writeLong(this.h);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.fence.Fence
 * JD-Core Version:    0.6.2
 */