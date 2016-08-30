package com.amap.api.maps2d.model;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;

public final class BitmapDescriptor
  implements Parcelable, Cloneable
{
  static final a a = new a();
  int b = 0;
  int c = 0;
  Bitmap d;

  BitmapDescriptor(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      this.b = paramBitmap.getWidth();
      this.c = paramBitmap.getHeight();
      this.d = paramBitmap;
    }
  }

  private BitmapDescriptor(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramBitmap;
  }

  public final BitmapDescriptor clone()
  {
    return new BitmapDescriptor(Bitmap.createBitmap(this.d), this.b, this.c);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final Bitmap getBitmap()
  {
    return this.d;
  }

  public final int getHeight()
  {
    return this.c;
  }

  public final int getWidth()
  {
    return this.b;
  }

  public final void recycle()
  {
    if ((this.d != null) && (!this.d.isRecycled()))
    {
      this.d.recycle();
      this.d = null;
    }
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.d, paramInt);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.BitmapDescriptor
 * JD-Core Version:    0.6.2
 */