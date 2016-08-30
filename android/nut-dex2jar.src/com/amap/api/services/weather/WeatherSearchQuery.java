package com.amap.api.services.weather;

import com.amap.api.services.core.i;

public class WeatherSearchQuery
  implements Cloneable
{
  public static final int WEATHER_TYPE_FORECAST = 2;
  public static final int WEATHER_TYPE_LIVE = 1;
  private String a;
  private int b = 1;

  public WeatherSearchQuery()
  {
  }

  public WeatherSearchQuery(String paramString, int paramInt)
  {
    this.a = paramString;
    this.b = paramInt;
  }

  public WeatherSearchQuery clone()
  {
    try
    {
      super.clone();
      return new WeatherSearchQuery(this.a, this.b);
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        i.a(localCloneNotSupportedException, "WeatherSearchQuery", "clone");
    }
  }

  public String getCity()
  {
    return this.a;
  }

  public int getType()
  {
    return this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.WeatherSearchQuery
 * JD-Core Version:    0.6.2
 */