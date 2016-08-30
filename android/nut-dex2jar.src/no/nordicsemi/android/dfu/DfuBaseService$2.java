package no.nordicsemi.android.dfu;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class DfuBaseService$2 extends BroadcastReceiver
{
  DfuBaseService$2(DfuBaseService paramDfuBaseService)
  {
  }

  public void onReceive(Context arg1, Intent paramIntent)
  {
    switch (paramIntent.getIntExtra("no.nordicsemi.android.dfu.extra.EXTRA_ACTION", 0))
    {
    default:
      return;
    case 0:
      DfuBaseService.access$402(this.this$0, true);
      return;
    case 1:
      DfuBaseService.access$402(this.this$0, false);
      synchronized (DfuBaseService.access$300(this.this$0))
      {
        DfuBaseService.access$300(this.this$0).notifyAll();
        return;
      }
    case 2:
    }
    DfuBaseService.access$402(this.this$0, false);
    DfuBaseService.access$502(this.this$0, true);
    synchronized (DfuBaseService.access$300(this.this$0))
    {
      DfuBaseService.access$300(this.this$0).notifyAll();
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.DfuBaseService.2
 * JD-Core Version:    0.6.2
 */