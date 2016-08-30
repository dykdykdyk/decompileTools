package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Looper;

class dr extends dw
{
  private static boolean a = true;

  protected dr(Context paramContext)
  {
    super(paramContext);
  }

  protected String a()
  {
    return dv.c;
  }

  protected boolean a(Context paramContext)
  {
    if (a)
    {
      a = false;
      synchronized (Looper.getMainLooper())
      {
        paramContext = new en(paramContext);
        ep localep = paramContext.a();
        if (localep == null)
          return true;
        if (localep.a())
        {
          localep.a(false);
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
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.dr
 * JD-Core Version:    0.6.2
 */