package com.nut.blehunter.ble;

import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.os.Message;
import b.a.a;
import java.util.Map;

final class j
  implements y
{
  j(BLEService paramBLEService, r paramr)
  {
  }

  public final void a(int paramInt)
  {
    Object localObject1 = BLEService.e(this.b);
    Object localObject2 = this.a.a.getAddress();
    long l = paramInt;
    if ((l < -120L) || (l >= 0L))
    {
      a.d("Abnormal Value device=%s rssi=%d", new Object[] { localObject2, Long.valueOf(l) });
      if ((((ae)localObject1).a != null) && (((ae)localObject1).a.get(localObject2) != null))
        localObject1 = (Long)((ae)localObject1).a.get(localObject2);
    }
    while (true)
    {
      localObject2 = BLEService.d(this.a, 12);
      ((Message)localObject2).getData().putInt("rssi", ((Long)localObject1).intValue());
      BLEService.a(this.b, (Message)localObject2);
      return;
      localObject1 = new Long(-50L);
      continue;
      localObject1 = Long.valueOf(((ae)localObject1).a((String)localObject2, l));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.j
 * JD-Core Version:    0.6.2
 */