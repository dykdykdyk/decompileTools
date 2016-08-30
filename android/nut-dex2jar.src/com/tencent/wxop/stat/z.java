package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.b.b;

final class z
  implements Runnable
{
  z(Context paramContext)
  {
  }

  public final void run()
  {
    try
    {
      new Thread(new ad(this.a), "NetworkMonitorTask").start();
      return;
    }
    catch (Throwable localThrowable)
    {
      v.e().b(localThrowable);
      v.a(this.a, localThrowable);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.z
 * JD-Core Version:    0.6.2
 */