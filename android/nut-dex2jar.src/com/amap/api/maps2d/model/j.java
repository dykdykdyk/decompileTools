package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class j
  implements Parcelable.Creator<Tile>
{
  public Tile a(Parcel paramParcel)
  {
    return new Tile(paramParcel.readInt(), paramParcel.readInt(), paramParcel.readInt(), paramParcel.createByteArray());
  }

  public Tile[] a(int paramInt)
  {
    return new Tile[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.j
 * JD-Core Version:    0.6.2
 */