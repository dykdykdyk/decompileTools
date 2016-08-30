package com.nut.blehunter.ui;

import com.nut.blehunter.u;
import com.umeng.analytics.b;

final class dq
  implements Runnable
{
  dq(ScanDeviceActivity paramScanDeviceActivity)
  {
  }

  public final void run()
  {
    ScanDeviceActivity.a(this.a);
    u.a("NTUIEventPair", "SCAN_TIMEOUT");
    b.a(this.a, "bind_search_timeout");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dq
 * JD-Core Version:    0.6.2
 */