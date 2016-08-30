package com.amap.api.services.busline;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator<BusStationItem>
{
  public final BusStationItem a(Parcel paramParcel)
  {
    return new BusStationItem(paramParcel, null);
  }

  public final BusStationItem[] a(int paramInt)
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.busline.b
 * JD-Core Version:    0.6.2
 */