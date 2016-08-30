package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.c;
import com.tencent.wxop.stat.a.f;
import com.tencent.wxop.stat.b.b;

final class p
  implements Runnable
{
  p(Context paramContext, Throwable paramThrowable)
  {
  }

  public final void run()
  {
    try
    {
      if (!t.c())
        return;
      new ae(new c(this.a, v.a(this.a, null), this.b, f.a)).a();
      return;
    }
    catch (Throwable localThrowable)
    {
      v.e().e("reportSdkSelfException error: " + localThrowable);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.p
 * JD-Core Version:    0.6.2
 */