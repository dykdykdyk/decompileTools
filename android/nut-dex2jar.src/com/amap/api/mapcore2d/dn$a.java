package com.amap.api.mapcore2d;

import android.content.Context;

class dn$a
  implements ez
{
  private Context a;

  dn$a(Context paramContext)
  {
    this.a = paramContext;
  }

  public void a()
  {
    try
    {
      dv.b(this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      dn.a(localThrowable, "LogNetListener", "onNetCompleted");
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.dn.a
 * JD-Core Version:    0.6.2
 */