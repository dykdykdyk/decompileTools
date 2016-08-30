package com.nut.blehunter.ble;

import android.os.Bundle;
import android.os.Message;

final class f
  implements ah
{
  f(BLEService paramBLEService, String paramString)
  {
  }

  public final void a(r paramr, boolean paramBoolean)
  {
    BLEService.b(this.b);
    if (paramBoolean)
    {
      paramr.n = true;
      paramr.b(false);
      BLEService.a(this.b, paramr);
      BLEService.c(this.b).put(this.a, paramr);
      BLEService.d(this.b);
    }
    while (true)
    {
      Message localMessage = BLEService.d(paramr, 11);
      Bundle localBundle = localMessage.getData();
      localBundle.putBoolean("bind_result", paramBoolean);
      localBundle.putString("hardware_version", paramr.i);
      localBundle.putString("firmware_version", paramr.j);
      localBundle.putString("manufacture_name", paramr.k);
      localBundle.putInt("device_name", paramr.p);
      if (paramr.p == 16)
        localBundle.putInt("battery", paramr.u);
      BLEService.a(this.b, localMessage);
      return;
      paramr.a(false);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.f
 * JD-Core Version:    0.6.2
 */