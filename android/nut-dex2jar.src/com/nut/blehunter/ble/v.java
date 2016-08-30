package com.nut.blehunter.ble;

import android.bluetooth.BluetoothGatt;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import b.a.a;
import java.lang.ref.WeakReference;

final class v extends Handler
{
  WeakReference<r> a;

  public v(r paramr)
  {
    super(Looper.getMainLooper());
    this.a = new WeakReference(paramr);
  }

  public final void handleMessage(Message paramMessage)
  {
    r localr = (r)this.a.get();
    if (localr == null);
    do
    {
      return;
      switch (paramMessage.what)
      {
      default:
        return;
      case 1000:
      case 1001:
        localr.a("DeviceController timeout:%s", new Object[] { Integer.valueOf(paramMessage.what) });
        localr.a(false);
        return;
      case 1002:
      }
    }
    while ((localr.m == 0) || (localr.b == null) || (localr.b.readRemoteRssi()));
    a.b("read rssi failed", new Object[0]);
    localr.a(false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.v
 * JD-Core Version:    0.6.2
 */