package com.amap.api.services.cloud;

import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.t;
import com.amap.api.services.core.t.d;

class CloudSearch$1 extends Thread
{
  CloudSearch$1(CloudSearch paramCloudSearch, CloudSearch.Query paramQuery)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    try
    {
      localMessage.arg1 = 12;
      localMessage.what = 700;
      t.d locald = new t.d();
      locald.b = CloudSearch.a(this.b);
      localMessage.obj = locald;
      locald.a = CloudSearch.a(this.b, this.a);
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
      CloudSearch.b(this.b).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.CloudSearch.1
 * JD-Core Version:    0.6.2
 */