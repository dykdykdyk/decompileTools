package com.amap.api.services.nearby;

import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;
import com.amap.api.services.core.t.f;

class NearbySearch$3 extends Thread
{
  NearbySearch$3(NearbySearch paramNearbySearch, NearbySearch.NearbyQuery paramNearbyQuery)
  {
  }

  public void run()
  {
    Message localMessage = NearbySearch.a(this.b).obtainMessage();
    localMessage.arg1 = 9;
    t.f localf = new t.f();
    localf.a = NearbySearch.b(this.b);
    localMessage.obj = localf;
    try
    {
      localf.b = this.b.searchNearbyInfo(this.a);
      localMessage.what = 1000;
      return;
    }
    catch (AMapException localAMapException)
    {
      localMessage.what = localAMapException.getErrorCode();
      i.a(localAMapException, "NearbySearch", "searchNearbyInfoAsyn");
      return;
    }
    finally
    {
      if (NearbySearch.a(this.b) != null)
        NearbySearch.a(this.b).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.nearby.NearbySearch.3
 * JD-Core Version:    0.6.2
 */