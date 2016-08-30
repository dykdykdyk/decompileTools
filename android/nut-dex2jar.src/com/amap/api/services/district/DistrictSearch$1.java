package com.amap.api.services.district;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;

class DistrictSearch$1 extends Thread
{
  DistrictSearch$1(DistrictSearch paramDistrictSearch)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    Object localObject1 = new DistrictResult();
    ((DistrictResult)localObject1).setQuery(DistrictSearch.a(this.a));
    Object localObject2 = localObject1;
    Object localObject4 = localObject1;
    try
    {
      DistrictResult localDistrictResult = DistrictSearch.b(this.a);
      if (localDistrictResult != null)
      {
        localObject2 = localDistrictResult;
        localObject4 = localDistrictResult;
        localObject1 = localDistrictResult;
        localDistrictResult.setAMapException(new AMapException());
      }
      localMessage.arg1 = 4;
      localMessage.obj = DistrictSearch.c(this.a);
      localObject1 = new Bundle();
      ((Bundle)localObject1).putParcelable("result", localDistrictResult);
      localMessage.setData((Bundle)localObject1);
      if (DistrictSearch.d(this.a) != null)
        DistrictSearch.d(this.a).sendMessage(localMessage);
      return;
    }
    catch (AMapException localAMapException)
    {
      do
      {
        localObject1 = localObject2;
        i.a(localAMapException, "DistrictSearch", "searchDistrictAnsy");
        localObject1 = localObject2;
        localObject2.setAMapException(localAMapException);
        localMessage.arg1 = 4;
        localMessage.obj = DistrictSearch.c(this.a);
        localObject1 = new Bundle();
        ((Bundle)localObject1).putParcelable("result", localObject2);
        localMessage.setData((Bundle)localObject1);
      }
      while (DistrictSearch.d(this.a) == null);
      DistrictSearch.d(this.a).sendMessage(localMessage);
      return;
    }
    catch (Throwable localThrowable)
    {
      do
      {
        localObject1 = localAMapException;
        i.a(localThrowable, "DistrictSearch", "searchDistrictAnsyThrowable");
        localMessage.arg1 = 4;
        localMessage.obj = DistrictSearch.c(this.a);
        localObject1 = new Bundle();
        ((Bundle)localObject1).putParcelable("result", localAMapException);
        localMessage.setData((Bundle)localObject1);
      }
      while (DistrictSearch.d(this.a) == null);
      DistrictSearch.d(this.a).sendMessage(localMessage);
      return;
    }
    finally
    {
      localMessage.arg1 = 4;
      localMessage.obj = DistrictSearch.c(this.a);
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("result", (Parcelable)localObject1);
      localMessage.setData(localBundle);
      if (DistrictSearch.d(this.a) != null)
        DistrictSearch.d(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.district.DistrictSearch.1
 * JD-Core Version:    0.6.2
 */