package io.fabric.sdk.android.services.b;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class g
  implements ServiceConnection
{
  private boolean a = false;
  private final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue(1);

  public final IBinder a()
  {
    if (this.a)
      f.b().e("Fabric", "getBinder already called");
    this.a = true;
    try
    {
      IBinder localIBinder = (IBinder)this.b.poll(200L, TimeUnit.MILLISECONDS);
      return localIBinder;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
    return null;
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      this.b.put(paramIBinder);
      return;
    }
    catch (InterruptedException paramComponentName)
    {
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.b.clear();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.g
 * JD-Core Version:    0.6.2
 */