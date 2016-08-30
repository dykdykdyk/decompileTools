package com.amap.api.services.weather;

import android.content.Context;
import android.os.Handler;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.ae;
import com.amap.api.services.core.af;
import com.amap.api.services.core.q;
import com.amap.api.services.core.t;

public class WeatherSearch
{
  private Context a;
  private WeatherSearchQuery b;
  private WeatherSearch.OnWeatherSearchListener c;
  private LocalWeatherLiveResult d;
  private LocalWeatherForecastResult e;
  private Handler f = null;

  public WeatherSearch(Context paramContext)
  {
    this.a = paramContext;
    this.f = t.a();
  }

  private LocalWeatherLiveResult a()
    throws AMapException
  {
    q.a(this.a);
    if (this.b == null)
      throw new AMapException("无效的参数 - IllegalArgumentException");
    af localaf = new af(this.a, this.b);
    return LocalWeatherLiveResult.a(localaf, (LocalWeatherLive)localaf.a());
  }

  private LocalWeatherForecastResult b()
    throws AMapException
  {
    q.a(this.a);
    if (this.b == null)
      throw new AMapException("无效的参数 - IllegalArgumentException");
    ae localae = new ae(this.a, this.b);
    return LocalWeatherForecastResult.a(localae, (LocalWeatherForecast)localae.a());
  }

  public WeatherSearchQuery getQuery()
  {
    return this.b;
  }

  public void searchWeatherAsyn()
  {
    new Thread(new WeatherSearch.1(this)).start();
  }

  public void setOnWeatherSearchListener(WeatherSearch.OnWeatherSearchListener paramOnWeatherSearchListener)
  {
    this.c = paramOnWeatherSearchListener;
  }

  public void setQuery(WeatherSearchQuery paramWeatherSearchQuery)
  {
    this.b = paramWeatherSearchQuery;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.WeatherSearch
 * JD-Core Version:    0.6.2
 */