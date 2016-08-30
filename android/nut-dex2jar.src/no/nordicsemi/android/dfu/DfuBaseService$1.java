package no.nordicsemi.android.dfu;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class DfuBaseService$1 extends BroadcastReceiver
{
  DfuBaseService$1(DfuBaseService paramDfuBaseService)
  {
  }

  public void onReceive(Context arg1, Intent paramIntent)
  {
    if (!((BluetoothDevice)paramIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE")).getAddress().equals(DfuBaseService.access$000(this.this$0)))
      return;
    ??? = paramIntent.getAction();
    DfuBaseService.access$100(this.this$0, "Action received: " + ???);
    DfuBaseService.access$202(this.this$0, 0);
    synchronized (DfuBaseService.access$300(this.this$0))
    {
      DfuBaseService.access$300(this.this$0).notifyAll();
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.DfuBaseService.1
 * JD-Core Version:    0.6.2
 */