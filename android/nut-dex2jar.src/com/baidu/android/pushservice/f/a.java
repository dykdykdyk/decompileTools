package com.baidu.android.pushservice.f;

import android.content.Context;
import android.net.NetworkInfo;
import com.baidu.android.pushservice.h;
import com.baidu.android.pushservice.util.g;
import com.baidu.android.pushservice.util.m;

public class a
{
  private static final String a = a.class.getSimpleName();

  public static boolean a(Context paramContext)
  {
    paramContext = g.c(paramContext);
    if (paramContext != null)
      return paramContext.isConnectedOrConnecting();
    return false;
  }

  public static boolean b(Context paramContext)
  {
    boolean bool2 = a(paramContext);
    boolean bool1 = bool2;
    if (!bool2)
    {
      bool1 = bool2;
      if (!m.r(paramContext, "android.permission.INTERNET"));
    }
    try
    {
      paramContext = c.a(h.a(), "GET", null);
      bool1 = bool2;
      if (paramContext.b() != 0)
      {
        paramContext = paramContext.a();
        bool1 = bool2;
        if (paramContext != null)
          bool1 = true;
      }
      return bool1;
    }
    catch (Exception paramContext)
    {
    }
    return bool2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.f.a
 * JD-Core Version:    0.6.2
 */