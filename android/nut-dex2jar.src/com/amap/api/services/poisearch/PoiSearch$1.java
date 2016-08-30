package com.amap.api.services.poisearch;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t.h;

class PoiSearch$1 extends Thread
{
  PoiSearch$1(PoiSearch paramPoiSearch)
  {
  }

  public void run()
  {
    Message localMessage = PoiSearch.a(this.a).obtainMessage();
    localMessage.arg1 = 6;
    localMessage.what = 600;
    Bundle localBundle = new Bundle();
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      PoiResult localPoiResult = this.a.searchPOI();
      localObject1 = localPoiResult;
      localObject3 = localPoiResult;
      localBundle.putInt("errorCode", 1000);
      localObject1 = new t.h();
      ((t.h)localObject1).b = PoiSearch.b(this.a);
      ((t.h)localObject1).a = localPoiResult;
      localMessage.obj = localObject1;
      localMessage.setData(localBundle);
      PoiSearch.a(this.a).sendMessage(localMessage);
      return;
    }
    catch (AMapException localAMapException)
    {
      localObject3 = localObject1;
      i.a(localAMapException, "PoiSearch", "searchPOIAsyn");
      localObject3 = localObject1;
      localBundle.putInt("errorCode", localAMapException.getErrorCode());
      localObject3 = new t.h();
      ((t.h)localObject3).b = PoiSearch.b(this.a);
      ((t.h)localObject3).a = ((PoiResult)localObject1);
      localMessage.obj = localObject3;
      localMessage.setData(localBundle);
      PoiSearch.a(this.a).sendMessage(localMessage);
      return;
    }
    finally
    {
      t.h localh = new t.h();
      localh.b = PoiSearch.b(this.a);
      localh.a = ((PoiResult)localObject3);
      localMessage.obj = localh;
      localMessage.setData(localBundle);
      PoiSearch.a(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.PoiSearch.1
 * JD-Core Version:    0.6.2
 */