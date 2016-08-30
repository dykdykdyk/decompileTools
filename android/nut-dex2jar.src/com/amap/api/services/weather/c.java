package com.amap.api.services.weather;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator<LocalWeatherLive>
{
  public final LocalWeatherLive a(Parcel paramParcel)
  {
    return new LocalWeatherLive(paramParcel);
  }

  public final LocalWeatherLive[] a(int paramInt)
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.c
 * JD-Core Version:    0.6.2
 */