package com.baidu.android.pushservice;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.baidu.android.pushservice.b.a.a;

class PushLightapp$2
  implements ServiceConnection
{
  PushLightapp$2(PushLightapp paramPushLightapp)
  {
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (PushLightapp.access$100())
    {
      PushLightapp.access$202(this.a, true);
      this.a.mIPushService = a.a.a(paramIBinder);
      PushLightapp.access$402(PushLightapp.access$500(this.a));
      if (PushLightapp.access$600() != null)
      {
        if (PushLightapp.access$700() == null)
          break label70;
        PushLightapp.access$600().initialComplete(PushLightapp.access$700());
      }
    }
    label70: 
    while (PushLightapp.access$800(this.a) == null)
    {
      PushLightapp.access$902(this.a, 0);
      return;
    }
    PushLightapp.access$702(new PushLightapp(PushLightapp.access$800(this.a)));
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (PushLightapp.access$900(this.a) <= 3)
    {
      PushLightapp.access$1000(this.a);
      return;
    }
    PushLightapp.access$902(this.a, 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushLightapp.2
 * JD-Core Version:    0.6.2
 */