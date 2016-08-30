package com.amap.api.services.nearby;

import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;

class NearbySearch$1 extends Thread
{
  NearbySearch$1(NearbySearch paramNearbySearch)
  {
  }

  public void run()
  {
    Message localMessage = NearbySearch.a(this.a).obtainMessage();
    localMessage.arg1 = 8;
    localMessage.obj = NearbySearch.b(this.a);
    try
    {
      NearbySearch.c(this.a);
      localMessage.what = 1000;
      return;
    }
    catch (AMapException localAMapException)
    {
      localMessage.what = localAMapException.getErrorCode();
      i.a(localAMapException, "NearbySearch", "clearUserInfoAsyn");
      return;
    }
    finally
    {
      if (NearbySearch.a(this.a) != null)
        NearbySearch.a(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.nearby.NearbySearch.1
 * JD-Core Version:    0.6.2
 */