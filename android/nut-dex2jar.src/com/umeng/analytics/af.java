package com.umeng.analytics;

import u.aly.ej;
import u.aly.ev;

public final class af
  implements Runnable
{
  public af(ae paramae, int paramInt)
  {
  }

  public final void run()
  {
    if (this.a > 0)
    {
      ej.f = aa.i();
      ev.a().a(this.a, System.currentTimeMillis(), "__evp_file_of");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.af
 * JD-Core Version:    0.6.2
 */