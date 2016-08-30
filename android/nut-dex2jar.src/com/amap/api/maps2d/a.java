package com.amap.api.maps2d;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.amap.api.maps2d.model.CameraPosition;

class a
  implements Parcelable.Creator<AMapOptions>
{
  public AMapOptions a(Parcel paramParcel)
  {
    AMapOptions localAMapOptions = new AMapOptions();
    CameraPosition localCameraPosition = (CameraPosition)paramParcel.readParcelable(CameraPosition.class.getClassLoader());
    localAMapOptions.mapType(paramParcel.readInt());
    localAMapOptions.camera(localCameraPosition);
    paramParcel = paramParcel.createBooleanArray();
    if ((paramParcel != null) && (paramParcel.length >= 6))
    {
      localAMapOptions.scrollGesturesEnabled(paramParcel[0]);
      localAMapOptions.zoomGesturesEnabled(paramParcel[1]);
      localAMapOptions.zoomControlsEnabled(paramParcel[2]);
      localAMapOptions.zOrderOnTop(paramParcel[3]);
      localAMapOptions.compassEnabled(paramParcel[4]);
      localAMapOptions.scaleControlsEnabled(paramParcel[5]);
    }
    return localAMapOptions;
  }

  public AMapOptions[] a(int paramInt)
  {
    return new AMapOptions[paramInt];
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.a
 * JD-Core Version:    0.6.2
 */