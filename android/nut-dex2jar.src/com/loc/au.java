package com.loc;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;

final class au
  implements ServiceConnection
{
  au(a parama)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.a.h = new Messenger(paramIBinder);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.a.h = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.au
 * JD-Core Version:    0.6.2
 */