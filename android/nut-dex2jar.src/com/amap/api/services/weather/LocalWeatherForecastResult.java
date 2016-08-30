package com.amap.api.services.weather;

import com.amap.api.services.core.ae;

public class LocalWeatherForecastResult
{
  private WeatherSearchQuery a;
  private LocalWeatherForecast b;

  private LocalWeatherForecastResult(ae paramae, LocalWeatherForecast paramLocalWeatherForecast)
  {
    this.a = ((WeatherSearchQuery)paramae.i());
    this.b = paramae.h();
  }

  static LocalWeatherForecastResult a(ae paramae, LocalWeatherForecast paramLocalWeatherForecast)
  {
    return new LocalWeatherForecastResult(paramae, paramLocalWeatherForecast);
  }

  public LocalWeatherForecast getForecastResult()
  {
    return this.b;
  }

  public WeatherSearchQuery getWeatherForecastQuery()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.LocalWeatherForecastResult
 * JD-Core Version:    0.6.2
 */