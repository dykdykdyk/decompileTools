package com.amap.api.services.core;

import android.content.Context;
import android.os.Looper;

class bb extends be
{
  private static boolean a = true;

  protected bb(Context paramContext)
  {
    super(paramContext);
  }

  protected String a()
  {
    return bd.b;
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
        if (localbx.b())
        {
          localbx.b(false);
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
    return 1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bb
 * JD-Core Version:    0.6.2
 */