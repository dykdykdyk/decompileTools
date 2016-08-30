package com.amap.api.services.nearby;

import android.os.Message;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;
import java.util.TimerTask;

class NearbySearch$a extends TimerTask
{
  public void run()
  {
    try
    {
      if (NearbySearch.a() == null)
        return;
      if (NearbySearch.d(NearbySearch.a()) != null)
      {
        Object localObject = NearbySearch.d(NearbySearch.a()).OnUploadInfoCallback();
        int i = NearbySearch.b(NearbySearch.a(), (UploadInfo)localObject);
        localObject = NearbySearch.a(NearbySearch.a()).obtainMessage();
        ((Message)localObject).arg1 = 10;
        ((Message)localObject).obj = NearbySearch.b(NearbySearch.a());
        ((Message)localObject).what = i;
        NearbySearch.a(NearbySearch.a()).sendMessage((Message)localObject);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      i.a(localThrowable, "NearbySearch", "UpdateDataTask");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.nearby.NearbySearch.a
 * JD-Core Version:    0.6.2
 */