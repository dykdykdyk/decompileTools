package com.nut.blehunter.a;

import android.os.Looper;

public final class f
  implements Runnable
{
  private f(c paramc)
  {
  }

  public final void run()
  {
    Looper.prepare();
    this.a.a = new g(this);
    Looper.loop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.a.f
 * JD-Core Version:    0.6.2
 */