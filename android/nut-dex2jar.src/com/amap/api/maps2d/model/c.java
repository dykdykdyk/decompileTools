package com.amap.api.maps2d.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;

class c
  implements Parcelable.Creator<CircleOptions>
{
  public CircleOptions a(Parcel paramParcel)
  {
    boolean bool = true;
    CircleOptions localCircleOptions = new CircleOptions();
    Bundle localBundle = paramParcel.readBundle();
    localCircleOptions.center(new LatLng(localBundle.getDouble("lat"), localBundle.getDouble("lng")));
    localCircleOptions.radius(paramParcel.readDouble());
    localCircleOptions.strokeWidth(paramParcel.readFloat());
    localCircleOptions.strokeColor(paramParcel.readInt());
    localCircleOptions.fillColor(paramParcel.readInt());
    localCircleOptions.zIndex(paramParcel.readInt());
    if (paramParcel.readByte() == 1);
    while (true)
    {
      localCircleOptions.visible(bool);
      localCircleOptions.a = paramParcel.readString();
      return localCircleOptions;
      bool = false;
    }
  }

  public CircleOptions[] a(int paramInt)
  {
    return new CircleOptions[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.c
 * JD-Core Version:    0.6.2
 */