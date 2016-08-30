package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;

public abstract class ar
{
  private static final Object a = new Object();
  private static ar b;

  public static ar a(Context paramContext)
  {
    synchronized (a)
    {
      if (b == null)
        b = new as(paramContext.getApplicationContext());
      return b;
    }
  }

  public abstract void a(String paramString1, String paramString2, ServiceConnection paramServiceConnection);

  public abstract boolean a(String paramString1, String paramString2, ServiceConnection paramServiceConnection, String paramString3);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.ar
 * JD-Core Version:    0.6.2
 */