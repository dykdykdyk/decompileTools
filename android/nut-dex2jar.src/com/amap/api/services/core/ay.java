package com.amap.api.services.core;

import android.content.Context;

public class ay
{
  protected static ay a;
  protected Thread.UncaughtExceptionHandler b;
  protected boolean c = true;

  public static void a(Throwable paramThrowable, String paramString1, String paramString2)
  {
    paramThrowable.printStackTrace();
    if (a != null)
      a.a(paramThrowable, 1, paramString1, paramString2);
  }

  protected void a(Context paramContext, ar paramar, boolean paramBoolean)
  {
  }

  protected void a(Throwable paramThrowable, int paramInt, String paramString1, String paramString2)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ay
 * JD-Core Version:    0.6.2
 */