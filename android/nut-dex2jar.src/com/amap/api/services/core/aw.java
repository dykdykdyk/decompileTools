package com.amap.api.services.core;

import android.content.Context;
import android.os.Looper;

class aw extends be
{
  private static boolean a = true;

  protected aw(Context paramContext)
  {
    super(paramContext);
  }

  protected String a()
  {
    return bd.d;
  }

  protected boolean a(Context paramContext)
  {
    if ((an.m(paramContext) == 1) && (a))
    {
      a = false;
      synchronized (Looper.getMainLooper())
      {
        paramContext = new bv(paramContext);
        bx localbx = paramContext.a();
        if (localbx == null)
          return true;
        if (localbx.c())
        {
          localbx.c(false);
          paramContext.a(localbx);
          return true;
        }
      }
      return false;
    }
    return false;
  }

  protected int b()
  {
    return 2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.aw
 * JD-Core Version:    0.6.2
 */