package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Looper;

class dt extends dw
{
  private static boolean a = true;

  protected dt(Context paramContext)
  {
    super(paramContext);
  }

  protected String a()
  {
    return dv.b;
  }

  protected boolean a(Context paramContext)
  {
    if ((de.m(paramContext) == 1) && (a))
    {
      a = false;
      synchronized (Looper.getMainLooper())
      {
        paramContext = new en(paramContext);
        ep localep = paramContext.a();
        if (localep == null)
          return true;
        if (localep.b())
        {
          localep.b(false);
          paramContext.a(localep);
          return true;
        }
      }
      return false;
    }
    return false;
  }

  protected int b()
  {
    return 1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.dt
 * JD-Core Version:    0.6.2
 */