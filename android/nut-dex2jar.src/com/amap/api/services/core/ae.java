package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.weather.LocalWeatherForecast;
import com.amap.api.services.weather.WeatherSearchQuery;

public class ae extends ag<WeatherSearchQuery, LocalWeatherForecast>
{
  private LocalWeatherForecast h = new LocalWeatherForecast();

  public ae(Context paramContext, WeatherSearchQuery paramWeatherSearchQuery)
  {
    super(paramContext, paramWeatherSearchQuery);
  }

  protected LocalWeatherForecast d(String paramString)
    throws AMapException
  {
    this.h = n.e(paramString);
    return this.h;
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("output=json");
    String str = ((WeatherSearchQuery)this.a).getCity();
    if (!n.i(str))
    {
      str = b(str);
      localStringBuffer.append("&city=").append(str);
    }
    localStringBuffer.append("&extensions=all");
    localStringBuffer.append("&key=" + aj.f(this.d));
    return localStringBuffer.toString();
  }

  public LocalWeatherForecast h()
  {
    return this.h;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ae
 * JD-Core Version:    0.6.2
 */