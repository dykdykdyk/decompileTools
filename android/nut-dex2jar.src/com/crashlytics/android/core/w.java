package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;

final class w
  implements Runnable
{
  w(v paramv, Runnable paramRunnable)
  {
  }

  public final void run()
  {
    try
    {
      this.a.run();
      return;
    }
    catch (Exception localException)
    {
      f.b().c("CrashlyticsCore", "Failed to execute task.", localException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.w
 * JD-Core Version:    0.6.2
 */