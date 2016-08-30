package com.amap.api.services.help;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.i;
import com.amap.api.services.core.t;
import java.util.ArrayList;

class Inputtips$1 extends Thread
{
  Inputtips$1(Inputtips paramInputtips)
  {
  }

  public void run()
  {
    Message localMessage = t.a().obtainMessage();
    localMessage.obj = Inputtips.a(this.a);
    localMessage.arg1 = 5;
    try
    {
      ArrayList localArrayList = Inputtips.a(this.a, Inputtips.b(this.a));
      Bundle localBundle = new Bundle();
      localBundle.putParcelableArrayList("result", localArrayList);
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
      Inputtips.c(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.help.Inputtips.1
 * JD-Core Version:    0.6.2
 */