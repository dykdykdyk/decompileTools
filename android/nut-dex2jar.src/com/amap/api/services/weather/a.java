package com.amap.api.services.weather;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<LocalDayWeatherForecast>
{
  public final LocalDayWeatherForecast a(Parcel paramParcel)
  {
    return new LocalDayWeatherForecast(paramParcel);
  }

  public final LocalDayWeatherForecast[] a(int paramInt)
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.a
 * JD-Core Version:    0.6.2
 */