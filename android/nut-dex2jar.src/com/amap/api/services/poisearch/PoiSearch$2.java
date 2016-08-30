package com.amap.api.services.poisearch;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;
import com.amap.api.services.core.t.g;

class PoiSearch$2 extends Thread
{
  PoiSearch$2(PoiSearch paramPoiSearch, String paramString)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    localMessage.arg1 = 6;
    localMessage.what = 602;
    Bundle localBundle = new Bundle();
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      PoiItem localPoiItem = this.b.searchPOIId(this.a);
      localObject1 = localPoiItem;
      localObject3 = localPoiItem;
      localBundle.putInt("errorCode", 1000);
      localObject1 = new t.g();
      ((t.g)localObject1).b = PoiSearch.b(this.b);
      ((t.g)localObject1).a = localPoiItem;
      localMessage.obj = localObject1;
      localMessage.setData(localBundle);
      PoiSearch.a(this.b).sendMessage(localMessage);
      return;
    }
    catch (AMapException localAMapException)
    {
      localObject3 = localObject1;
      i.a(localAMapException, "PoiSearch", "searchPOIIdAsyn");
      localObject3 = localObject1;
      localBundle.putInt("errorCode", localAMapException.getErrorCode());
      localObject3 = new t.g();
      ((t.g)localObject3).b = PoiSearch.b(this.b);
      ((t.g)localObject3).a = ((PoiItem)localObject1);
      localMessage.obj = localObject3;
      localMessage.setData(localBundle);
      PoiSearch.a(this.b).sendMessage(localMessage);
      return;
    }
    finally
    {
      t.g localg = new t.g();
      localg.b = PoiSearch.b(this.b);
      localg.a = ((PoiItem)localObject3);
      localMessage.obj = localg;
      localMessage.setData(localBundle);
      PoiSearch.a(this.b).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.PoiSearch.2
 * JD-Core Version:    0.6.2
 */