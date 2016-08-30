package com.nut.blehunter.ble;

import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.os.Message;
import android.os.ParcelUuid;
import android.text.TextUtils;
import android.util.SparseArray;
import b.a.a;
import com.nut.blehunter.d.o;
import java.util.List;
import java.util.UUID;

final class e
  implements BluetoothAdapter.LeScanCallback
{
  e(BLEService paramBLEService)
  {
  }

  public final void onLeScan(BluetoothDevice paramBluetoothDevice, int paramInt, byte[] paramArrayOfByte)
  {
    boolean bool2 = false;
    paramArrayOfByte = af.a(paramArrayOfByte);
    a.a("device name %s mac address %s is found rssi is %d service %s deviceId is %s", new Object[] { paramArrayOfByte.d, paramBluetoothDevice.getAddress(), Integer.valueOf(paramInt), paramArrayOfByte.b, o.a(paramBluetoothDevice.getAddress()) });
    Object localObject = paramArrayOfByte.d;
    int i;
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (((String)localObject).startsWith("nut")))
    {
      localObject = (byte[])paramArrayOfByte.c.get(89);
      if (localObject == null)
        break label309;
      if (localObject.length != 4)
        break label273;
      i = localObject[0];
      int j = localObject[1];
      int k = localObject[2];
      i = localObject[3] & 0xFF | (i << 24 | (j & 0xFF) << 16 | (k & 0xFF) << 8);
    }
    while (true)
    {
      localObject = paramArrayOfByte.b;
      paramArrayOfByte = new Bundle();
      paramArrayOfByte.putParcelable("device", paramBluetoothDevice);
      paramArrayOfByte.putInt("rssi", paramInt);
      paramArrayOfByte.putInt("device_name", i);
      boolean bool1 = bool2;
      if (localObject != null)
      {
        bool1 = bool2;
        if (((List)localObject).contains(ParcelUuid.fromString(aj.l.toString())))
          bool1 = true;
      }
      paramArrayOfByte.putBoolean("dfu_mode", bool1);
      paramBluetoothDevice = BLEService.a(this.a).obtainMessage();
      paramBluetoothDevice.setData(paramArrayOfByte);
      paramBluetoothDevice.what = 16;
      BLEService.a(this.a).sendMessage(paramBluetoothDevice);
      return;
      label273: if (localObject.length == 2)
      {
        i = localObject[0];
        i = localObject[1] & 0xFF | (i & 0xFF) << 8;
      }
      else
      {
        label309: i = 0;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.e
 * JD-Core Version:    0.6.2
 */