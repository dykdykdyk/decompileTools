package com.amap.api.services.cloud;

import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.t;
import com.amap.api.services.core.t.c;

class CloudSearch$2 extends Thread
{
  CloudSearch$2(CloudSearch paramCloudSearch, String paramString1, String paramString2)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    try
    {
      localMessage.arg1 = 12;
      localMessage.what = 701;
      t.c localc = new t.c();
      localc.b = CloudSearch.a(this.c);
      localMessage.obj = localc;
      localc.a = CloudSearch.a(this.c, this.a, this.b);
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
      CloudSearch.b(this.c).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.CloudSearch.2
 * JD-Core Version:    0.6.2
 */