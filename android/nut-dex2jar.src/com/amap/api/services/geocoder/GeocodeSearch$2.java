package com.amap.api.services.geocoder;

import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;
import com.amap.api.services.core.t.e;
import java.util.List;

class GeocodeSearch$2
  implements Runnable
{
  GeocodeSearch$2(GeocodeSearch paramGeocodeSearch, GeocodeQuery paramGeocodeQuery)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    try
    {
      localMessage.what = 200;
      localMessage.arg1 = 2;
      localMessage.arg2 = 1000;
      t.e locale = new t.e();
      locale.b = GeocodeSearch.a(this.b);
      localMessage.obj = locale;
      List localList = this.b.getFromLocationName(this.a);
      locale.a = new GeocodeResult(this.a, localList);
      return;
    }
    catch (AMapException localAMapException)
    {
      i.a(localAMapException, "GeocodeSearch", "getFromLocationNameAsyn");
      localMessage.arg2 = localAMapException.getErrorCode();
      return;
    }
    finally
    {
      GeocodeSearch.b(this.b).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.GeocodeSearch.2
 * JD-Core Version:    0.6.2
 */