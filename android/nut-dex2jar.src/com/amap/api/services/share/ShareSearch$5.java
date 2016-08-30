package com.amap.api.services.share;

import android.os.Bundle;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.t;

class ShareSearch$5 extends Thread
{
  ShareSearch$5(ShareSearch paramShareSearch, ShareSearch.ShareNaviQuery paramShareNaviQuery)
  {
  }

  public void run()
  {
    if (ShareSearch.a(this.b) == null)
      return;
    Message localMessage = t.a().obtainMessage();
    localMessage.arg1 = 11;
    localMessage.what = 1102;
    localMessage.obj = ShareSearch.a(this.b);
    try
    {
      String str = this.b.searchNaviShareUrl(this.a);
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
 * Qualified Name:     com.amap.api.services.share.ShareSearch.5
 * JD-Core Version:    0.6.2
 */