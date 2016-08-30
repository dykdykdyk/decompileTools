package com.amap.api.services.weather;

public abstract interface WeatherSearch$OnWeatherSearchListener
{
  public abstract void onWeatherForecastSearched(LocalWeatherForecastResult paramLocalWeatherForecastResult, int paramInt);

  public abstract void onWeatherLiveSearched(LocalWeatherLiveResult paramLocalWeatherLiveResult, int paramInt);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.WeatherSearch.OnWeatherSearchListener
 * JD-Core Version:    0.6.2
 */