package com.amap.api.services.core;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Looper;

public class q
{
  public static ar a;
  private static q b;
  private static Context c;
  private q.a d;
  private HandlerThread e = new r(this, "manifestThread");

  private q(Context paramContext)
  {
    c = paramContext;
    a = h.a(false);
    try
    {
      this.e.start();
      this.d = new q.a(this, Looper.getMainLooper());
      return;
    }
    catch (Throwable paramContext)
    {
      i.a(paramContext, "ManifestConfig", "ManifestConfig");
    }
  }

  public static q a(Context paramContext)
  {
    if (b == null)
      b = new q(paramContext);
    return b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.q
 * JD-Core Version:    0.6.2
 */