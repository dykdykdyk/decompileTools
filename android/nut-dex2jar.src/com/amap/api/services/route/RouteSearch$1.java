package com.amap.api.services.route;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;

class RouteSearch$1 extends Thread
{
  RouteSearch$1(RouteSearch paramRouteSearch, RouteSearch.WalkRouteQuery paramWalkRouteQuery)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    localMessage.what = 102;
    localMessage.arg1 = 1;
    Bundle localBundle = new Bundle();
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      WalkRouteResult localWalkRouteResult = this.b.calculateWalkRoute(this.a);
      localObject1 = localWalkRouteResult;
      localObject3 = localWalkRouteResult;
      localBundle.putInt("errorCode", 1000);
      return;
    }
    catch (AMapException localAMapException)
    {
      localObject3 = localObject1;
      i.a(localAMapException, "RouteSearch", "calculateWalkRouteAsyn");
      localObject3 = localObject1;
      localBundle.putInt("errorCode", localAMapException.getErrorCode());
      return;
    }
    finally
    {
      localMessage.obj = RouteSearch.a(this.b);
      localBundle.putParcelable("result", localObject3);
      localMessage.setData(localBundle);
      RouteSearch.b(this.b).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.route.RouteSearch.1
 * JD-Core Version:    0.6.2
 */