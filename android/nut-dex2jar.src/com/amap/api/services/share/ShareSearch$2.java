package com.amap.api.services.share;

import android.os.Bundle;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.t;

class ShareSearch$2 extends Thread
{
  ShareSearch$2(ShareSearch paramShareSearch, ShareSearch.ShareBusRouteQuery paramShareBusRouteQuery)
  {
  }

  public void run()
  {
    if (ShareSearch.a(this.b) == null)
      return;
    Message localMessage = t.a().obtainMessage();
    localMessage.arg1 = 11;
    localMessage.what = 1103;
    localMessage.obj = ShareSearch.a(this.b);
    try
    {
      String str = this.b.searchBusRouteShareUrl(this.a);
      Bundle localBundle = new Bundle();
      localBundle.putString("shareurlkey", str);
      localMessage.setData(localBundle);
      localMessage.arg2 = 1000;
      return;
    }
    catch (AMapException localAMapException)
    {
      localMessage.arg2 = localAMapException.getErrorCode();
      return;
    }
    finally
    {
      t.a().sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.share.ShareSearch.2
 * JD-Core Version:    0.6.2
 */