package com.sina.weibo.sdk.a.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

final class b
  implements ServiceConnection
{
  b(a parama)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramIBinder = com.sina.a.b.a(paramIBinder);
    try
    {
      paramComponentName = paramIBinder.a();
      paramIBinder = paramIBinder.b();
      this.a.c.getApplicationContext().unbindService(this.a.g);
      if (!this.a.a(paramComponentName, paramIBinder))
        this.a.a.a(this.a.b);
      return;
    }
    catch (RemoteException paramComponentName)
    {
      paramComponentName.printStackTrace();
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.a.a.a(this.a.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.a.a.b
 * JD-Core Version:    0.6.2
 */