package com.amap.api.services.core;

import android.content.Context;

final class bd$1
  implements Runnable
{
  bd$1(int paramInt, Context paramContext, Throwable paramThrowable, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    try
    {
      bg localbg = bg.a(this.a);
      if (localbg == null)
        return;
      localbg.a(this.b, this.c, this.d, this.e);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bd.1
 * JD-Core Version:    0.6.2
 */