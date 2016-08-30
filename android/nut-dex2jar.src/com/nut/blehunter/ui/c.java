package com.nut.blehunter.ui;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;

final class c
  implements ServiceConnection
{
  c(b paramb)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    b.a(this.a, new Messenger(paramIBinder));
    this.a.a(1, null);
    this.a.f();
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    b.a(this.a, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.c
 * JD-Core Version:    0.6.2
 */