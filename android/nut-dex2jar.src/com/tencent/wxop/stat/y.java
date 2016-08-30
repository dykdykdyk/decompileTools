package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.b.b;

final class y
  implements Runnable
{
  y(Context paramContext)
  {
  }

  public final void run()
  {
    try
    {
      v.c(this.a);
      ai.a(this.a).a(this.b);
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
 * Qualified Name:     com.tencent.wxop.stat.y
 * JD-Core Version:    0.6.2
 */