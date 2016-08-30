package com.amap.api.services.geocoder;

import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;
import com.amap.api.services.core.t.i;

class GeocodeSearch$1
  implements Runnable
{
  GeocodeSearch$1(GeocodeSearch paramGeocodeSearch, RegeocodeQuery paramRegeocodeQuery)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    try
    {
      localMessage.arg1 = 2;
      localMessage.what = 201;
      t.i locali = new t.i();
      locali.b = GeocodeSearch.a(this.b);
      localMessage.obj = locali;
      RegeocodeAddress localRegeocodeAddress = this.b.getFromLocation(this.a);
      locali.a = new RegeocodeResult(this.a, localRegeocodeAddress);
      localMessage.arg2 = 1000;
      return;
    }
    catch (AMapException localAMapException)
    {
      i.a(localAMapException, "GeocodeSearch", "getFromLocationAsyn");
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
 * Qualified Name:     com.amap.api.services.geocoder.GeocodeSearch.1
 * JD-Core Version:    0.6.2
 */