package com.nut.blehunter.ui;

import com.nut.blehunter.u;
import com.umeng.analytics.b;

final class ds
  implements Runnable
{
  ds(ScanDeviceActivity paramScanDeviceActivity)
  {
  }

  public final void run()
  {
    ScanDeviceActivity.a(this.a, false);
    ScanDeviceActivity.b(this.a);
    ScanDeviceActivity.c(this.a);
    u.a("NTUIEventPair", "CONNECT_TIMEOUT");
    u.a("NTBindEvent", "CONNECTION_FAILED", "TYPE", "0");
    b.a(this.a, "bind_connect_timeout");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ds
 * JD-Core Version:    0.6.2
 */