package com.amap.api.services.busline;

import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;
import com.amap.api.services.core.t.b;

class BusStationSearch$1
  implements Runnable
{
  BusStationSearch$1(BusStationSearch paramBusStationSearch)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    try
    {
      localMessage.arg1 = 7;
      localMessage.what = 1000;
      t.b localb = new t.b();
      localb.b = BusStationSearch.a(this.a);
      localMessage.obj = localb;
      localb.a = this.a.searchBusStation();
      return;
    }
    catch (AMapException localAMapException)
    {
      i.a(localAMapException, "BusStationSearch", "searchBusStationAsyn");
      localMessage.what = localAMapException.getErrorCode();
      return;
    }
    finally
    {
      BusStationSearch.b(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.busline.BusStationSearch.1
 * JD-Core Version:    0.6.2
 */