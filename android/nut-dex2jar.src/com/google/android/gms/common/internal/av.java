package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Iterator;
import java.util.Set;

public final class av
  implements ServiceConnection
{
  public av(au paramau)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (as.a(this.a.h))
    {
      this.a.e = paramIBinder;
      this.a.g = paramComponentName;
      Iterator localIterator = this.a.b.iterator();
      if (localIterator.hasNext())
        ((ServiceConnection)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
    }
    this.a.c = 1;
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    synchronized (as.a(this.a.h))
    {
      this.a.e = null;
      this.a.g = paramComponentName;
      Iterator localIterator = this.a.b.iterator();
      if (localIterator.hasNext())
        ((ServiceConnection)localIterator.next()).onServiceDisconnected(paramComponentName);
    }
    this.a.c = 2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.av
 * JD-Core Version:    0.6.2
 */