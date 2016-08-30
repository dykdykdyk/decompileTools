package com.nut.blehunter.service;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;
import com.nut.blehunter.NutTrackerApplication;
import com.nut.blehunter.entity.m;

final class k
  implements ServiceConnection
{
  k(NutTrackerService paramNutTrackerService)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    boolean bool = true;
    NutTrackerService.a(this.a, new Messenger(paramIBinder));
    this.a.a(1, null);
    if (m.a().c())
    {
      if (NutTrackerService.d(this.a))
        this.a.a(7, null);
    }
    else
      return;
    paramComponentName = this.a;
    if (!NutTrackerApplication.b);
    while (true)
    {
      NutTrackerService.a(paramComponentName, bool);
      return;
      bool = false;
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    NutTrackerService.a(this.a, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.service.k
 * JD-Core Version:    0.6.2
 */