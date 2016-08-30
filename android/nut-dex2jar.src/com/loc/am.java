package com.loc;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class am
  implements ServiceConnection
{
  am(al paramal, ao paramao)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.b.c = dw.a(paramIBinder);
    this.a.a(0);
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.b.c = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.am
 * JD-Core Version:    0.6.2
 */