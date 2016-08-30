package com.nut.blehunter.ble;

import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.os.Message;
import com.nut.blehunter.d.o;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.provider.i;

final class h
  implements aa
{
  h(BLEService paramBLEService)
  {
  }

  public final void a(r paramr, boolean paramBoolean)
  {
    Nut localNut;
    if (paramBoolean)
    {
      String str = o.a(paramr.a.getAddress());
      localNut = i.b().c(str);
      if (localNut.J != 3)
        break label78;
      i.b().i(str);
    }
    while (true)
    {
      BLEService.c(this.a).remove(paramr);
      paramr = BLEService.d(paramr, 18);
      paramr.getData().putBoolean("delete_result", paramBoolean);
      BLEService.a(this.a, paramr);
      return;
      label78: localNut.J = 1;
      i.b().a(localNut, true);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.h
 * JD-Core Version:    0.6.2
 */