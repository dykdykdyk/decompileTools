package com.nut.blehunter.ble;

import android.os.Handler;

final class n
  implements Runnable
{
  private Handler a;

  public n(Handler paramHandler)
  {
    this.a = paramHandler;
  }

  public final void run()
  {
    this.a.sendEmptyMessage(33);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.n
 * JD-Core Version:    0.6.2
 */