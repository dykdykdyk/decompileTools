package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

public final class q
  implements ServiceConnection
{
  private final int b;

  public q(i parami, int paramInt)
  {
    this.b = paramInt;
  }

  public final void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
  {
    b.a(paramIBinder, "Expecting a valid IBinder");
    synchronized (i.a(this.a))
    {
      i.a(this.a, bh.a(paramIBinder));
      this.a.a(0, this.b);
      return;
    }
  }

  public final void onServiceDisconnected(ComponentName arg1)
  {
    synchronized (i.a(this.a))
    {
      i.a(this.a, null);
      this.a.e.sendMessage(this.a.e.obtainMessage(4, this.b, 1));
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.q
 * JD-Core Version:    0.6.2
 */