package com.google.android.gms.common;

import android.content.Context;
import android.util.Log;

final class h
{
  private static Context a;

  static void a(Context paramContext)
  {
    try
    {
      if (a == null)
        if (paramContext != null)
          a = paramContext.getApplicationContext();
      while (true)
      {
        return;
        Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
      }
    }
    finally
    {
    }
    throw paramContext;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.h
 * JD-Core Version:    0.6.2
 */