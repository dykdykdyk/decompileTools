package com.amap.api.services.weather;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;
import com.amap.api.services.core.t.j;
import com.amap.api.services.core.t.k;

class WeatherSearch$1
  implements Runnable
{
  WeatherSearch$1(WeatherSearch paramWeatherSearch)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    localMessage.arg1 = 13;
    Bundle localBundle = new Bundle();
    if (WeatherSearch.a(this.a).getType() == 1);
    Object localObject3;
    while (WeatherSearch.a(this.a).getType() != 2)
      try
      {
        WeatherSearch.a(this.a, WeatherSearch.b(this.a));
        localBundle.putInt("errorCode", 1000);
        t.k localk1 = new t.k();
        localMessage.what = 1301;
        localk1.b = WeatherSearch.c(this.a);
        localk1.a = WeatherSearch.d(this.a);
        localMessage.obj = localk1;
        localMessage.setData(localBundle);
        WeatherSearch.e(this.a).sendMessage(localMessage);
        return;
      }
      catch (AMapException localAMapException1)
      {
        localBundle.putInt("errorCode", localAMapException1.getErrorCode());
        i.a(localAMapException1, "WeatherSearch", "searchWeatherAsyn");
        t.k localk2 = new t.k();
        localMessage.what = 1301;
        localk2.b = WeatherSearch.c(this.a);
        localk2.a = WeatherSearch.d(this.a);
        localMessage.obj = localk2;
        localMessage.setData(localBundle);
        WeatherSearch.e(this.a).sendMessage(localMessage);
        return;
      }
      catch (Throwable localThrowable1)
      {
        i.a(localThrowable1, "WeatherSearch", "searchWeatherAnsyThrowable");
        t.k localk3 = new t.k();
        localMessage.what = 1301;
        localk3.b = WeatherSearch.c(this.a);
        localk3.a = WeatherSearch.d(this.a);
        localMessage.obj = localk3;
        localMessage.setData(localBundle);
        WeatherSearch.e(this.a).sendMessage(localMessage);
        return;
      }
      finally
      {
        localObject3 = new t.k();
        localMessage.what = 1301;
        ((t.k)localObject3).b = WeatherSearch.c(this.a);
        ((t.k)localObject3).a = WeatherSearch.d(this.a);
        localMessage.obj = localObject3;
        localMessage.setData(localBundle);
        WeatherSearch.e(this.a).sendMessage(localMessage);
      }
    try
    {
      WeatherSearch.a(this.a, WeatherSearch.f(this.a));
      localBundle.putInt("errorCode", 1000);
      t.j localj1 = new t.j();
      localMessage.what = 1302;
      localj1.b = WeatherSearch.c(this.a);
      localj1.a = WeatherSearch.g(this.a);
      localMessage.obj = localj1;
      localMessage.setData(localBundle);
      WeatherSearch.e(this.a).sendMessage(localMessage);
      return;
    }
    catch (AMapException localAMapException2)
    {
      localBundle.putInt("errorCode", localAMapException2.getErrorCode());
      i.a(localAMapException2, "WeatherSearch", "searchWeatherAsyn");
      t.j localj2 = new t.j();
      localMessage.what = 1302;
      localj2.b = WeatherSearch.c(this.a);
      localj2.a = WeatherSearch.g(this.a);
      localMessage.obj = localj2;
      localMessage.setData(localBundle);
      WeatherSearch.e(this.a).sendMessage(localMessage);
      return;
    }
    catch (Throwable localThrowable2)
    {
      i.a(localThrowable2, "WeatherSearch", "searchWeatherAnsyThrowable");
      t.j localj3 = new t.j();
      localMessage.what = 1302;
      localj3.b = WeatherSearch.c(this.a);
      localj3.a = WeatherSearch.g(this.a);
      localMessage.obj = localj3;
      localMessage.setData(localBundle);
      WeatherSearch.e(this.a).sendMessage(localMessage);
      return;
    }
    finally
    {
      localObject3 = new t.j();
      localMessage.what = 1302;
      ((t.j)localObject3).b = WeatherSearch.c(this.a);
      ((t.j)localObject3).a = WeatherSearch.g(this.a);
      localMessage.obj = localObject3;
      localMessage.setData(localBundle);
      WeatherSearch.e(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.weather.WeatherSearch.1
 * JD-Core Version:    0.6.2
 */