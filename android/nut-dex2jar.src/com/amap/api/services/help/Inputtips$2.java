package com.amap.api.services.help;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.m;
import com.amap.api.services.core.t;
import java.util.ArrayList;

class Inputtips$2 extends Thread
{
  Inputtips$2(Inputtips paramInputtips, InputtipsQuery paramInputtipsQuery)
  {
  }

  public void run()
  {
    Object localObject1 = new m(Inputtips.d(this.b), this.a);
    Message localMessage = t.a().obtainMessage();
    localMessage.obj = Inputtips.a(this.b);
    localMessage.arg1 = 5;
    try
    {
      localObject1 = (ArrayList)((m)localObject1).a();
      Bundle localBundle = new Bundle();
      localBundle.putParcelableArrayList("result", (ArrayList)localObject1);
      localMessage.setData(localBundle);
      localMessage.what = 1000;
      return;
    }
    catch (AMapException localAMapException)
    {
      i.a(localAMapException, "Inputtips", "requestInputtips");
      localMessage.what = localAMapException.getErrorCode();
      return;
    }
    finally
    {
      Inputtips.c(this.b).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.help.Inputtips.2
 * JD-Core Version:    0.6.2
 */