package com.amap.api.services.nearby;

import android.os.Message;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;

class NearbySearch$2
  implements Runnable
{
  NearbySearch$2(NearbySearch paramNearbySearch, UploadInfo paramUploadInfo)
  {
  }

  public void run()
  {
    try
    {
      Message localMessage = NearbySearch.a(this.b).obtainMessage();
      localMessage.arg1 = 10;
      localMessage.obj = NearbySearch.b(this.b);
      localMessage.what = NearbySearch.a(this.b, this.a);
      NearbySearch.a(this.b).sendMessage(localMessage);
      return;
    }
    catch (Throwable localThrowable)
    {
      i.a(localThrowable, "NearbySearch", "uploadNearbyInfoAsyn");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.nearby.NearbySearch.2
 * JD-Core Version:    0.6.2
 */