package com.amap.api.services.busline;

import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;
import com.amap.api.services.core.t.a;

class BusLineSearch$1
  implements Runnable
{
  BusLineSearch$1(BusLineSearch paramBusLineSearch)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    try
    {
      localMessage.arg1 = 3;
      localMessage.what = 1000;
      t.a locala = new t.a();
      localMessage.obj = locala;
      locala.b = BusLineSearch.a(this.a);
      locala.a = this.a.searchBusLine();
      return;
    }
    catch (AMapException localAMapException)
    {
      localMessage.what = localAMapException.getErrorCode();
      i.a(localAMapException, "BusLineSearch", "searchBusLineAsyn");
      return;
    }
    finally
    {
      BusLineSearch.b(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.busline.BusLineSearch.1
 * JD-Core Version:    0.6.2
 */