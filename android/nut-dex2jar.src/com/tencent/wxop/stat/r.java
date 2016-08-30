package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.a;

final class r
  implements Runnable
{
  r(Context paramContext, com.tencent.wxop.stat.a.b paramb)
  {
  }

  public final void run()
  {
    try
    {
      a locala = new a(this.a, v.a(this.a, this.b), this.c.a, this.b);
      locala.a().c = this.c.c;
      new ae(locala).a();
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
 * Qualified Name:     com.tencent.wxop.stat.r
 * JD-Core Version:    0.6.2
 */