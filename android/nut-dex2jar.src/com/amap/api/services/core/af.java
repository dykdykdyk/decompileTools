package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.weather.LocalWeatherLive;
import com.amap.api.services.weather.WeatherSearchQuery;

public class af extends ag<WeatherSearchQuery, LocalWeatherLive>
{
  private LocalWeatherLive h = new LocalWeatherLive();

  public af(Context paramContext, WeatherSearchQuery paramWeatherSearchQuery)
  {
    super(paramContext, paramWeatherSearchQuery);
  }

  protected LocalWeatherLive d(String paramString)
    throws AMapException
  {
    this.h = n.d(paramString);
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
    localStringBuffer.append("&extensions=base");
    localStringBuffer.append("&key=" + aj.f(this.d));
    return localStringBuffer.toString();
  }

  public LocalWeatherLive h()
  {
    return this.h;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.af
 * JD-Core Version:    0.6.2
 */