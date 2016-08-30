package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.io.File;
import java.util.concurrent.Callable;

final class k
  implements Callable<Boolean>
{
  k(h paramh)
  {
  }

  private Boolean a()
    throws Exception
  {
    try
    {
      boolean bool = h.a(this.a).b().delete();
      f.b().a("CrashlyticsCore", "Initialization marker file removed: " + bool);
      return Boolean.valueOf(bool);
    }
    catch (Exception localException)
    {
      f.b().c("CrashlyticsCore", "Problem encountered deleting Crashlytics initialization marker.", localException);
    }
    return Boolean.valueOf(false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.k
 * JD-Core Version:    0.6.2
 */