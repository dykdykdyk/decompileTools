package com.amap.api.maps2d.model;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable.Creator;

class a
  implements Parcelable.Creator<BitmapDescriptor>
{
  public BitmapDescriptor a(Parcel paramParcel)
  {
    BitmapDescriptor localBitmapDescriptor = new BitmapDescriptor(null);
    localBitmapDescriptor.d = ((Bitmap)paramParcel.readParcelable(BitmapDescriptor.class.getClassLoader()));
    localBitmapDescriptor.b = paramParcel.readInt();
    localBitmapDescriptor.c = paramParcel.readInt();
    return localBitmapDescriptor;
  }

  public BitmapDescriptor[] a(int paramInt)
  {
    return new BitmapDescriptor[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.a
 * JD-Core Version:    0.6.2
 */