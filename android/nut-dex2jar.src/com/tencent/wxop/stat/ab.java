package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.b.b;

final class ab
  implements Runnable
{
  ab(Context paramContext)
  {
  }

  public final void run()
  {
    try
    {
      v.a(this.a, this.b);
      return;
    }
    catch (Throwable localThrowable)
    {
      v.e().b(localThrowable);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.ab
 * JD-Core Version:    0.6.2
 */