package com.amap.api.mapcore2d;

import android.content.Context;

final class dv$1
  implements Runnable
{
  dv$1(int paramInt, Context paramContext, Throwable paramThrowable, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    try
    {
      dy localdy = dy.a(this.a);
      if (localdy == null)
        return;
      localdy.a(this.b, this.c, this.d, this.e);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.dv.1
 * JD-Core Version:    0.6.2
 */