package com.amap.api.services.weather;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator<LocalWeatherForecast>
{
  public final LocalWeatherForecast a(Parcel paramParcel)
  {
    return new LocalWeatherForecast(paramParcel);
  }

  public final LocalWeatherForecast[] a(int paramInt)
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.b
 * JD-Core Version:    0.6.2
 */