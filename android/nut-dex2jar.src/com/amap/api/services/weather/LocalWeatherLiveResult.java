package com.amap.api.services.weather;

import com.amap.api.services.core.af;

public class LocalWeatherLiveResult
{
  private WeatherSearchQuery a;
  private LocalWeatherLive b;

  private LocalWeatherLiveResult(af paramaf, LocalWeatherLive paramLocalWeatherLive)
  {
    this.a = ((WeatherSearchQuery)paramaf.i());
    this.b = paramaf.h();
  }

  static LocalWeatherLiveResult a(af paramaf, LocalWeatherLive paramLocalWeatherLive)
  {
    return new LocalWeatherLiveResult(paramaf, paramLocalWeatherLive);
  }

  public LocalWeatherLive getLiveResult()
  {
    return this.b;
  }

  public WeatherSearchQuery getWeatherLiveQuery()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.LocalWeatherLiveResult
 * JD-Core Version:    0.6.2
 */