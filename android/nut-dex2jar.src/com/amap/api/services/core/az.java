package com.amap.api.services.core;

import android.content.Context;
import android.os.Looper;

class az extends be
{
  private static boolean a = true;

  protected az(Context paramContext)
  {
    super(paramContext);
  }

  protected String a()
  {
    return bd.c;
  }

  protected boolean a(Context paramContext)
  {
    if (a)
    {
      a = false;
      synchronized (Looper.getMainLooper())
      {
        paramContext = new bv(paramContext);
        bx localbx = paramContext.a();
        if (localbx == null)
          return true;
        if (localbx.a())
        {
          localbx.a(false);
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
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.az
 * JD-Core Version:    0.6.2
 */