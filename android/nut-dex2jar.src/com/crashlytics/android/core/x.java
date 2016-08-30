package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.util.concurrent.Callable;

final class x
  implements Callable<T>
{
  x(v paramv, Callable paramCallable)
  {
  }

  public final T call()
    throws Exception
  {
    try
    {
      Object localObject = this.a.call();
      return localObject;
    }
    catch (Exception localException)
    {
      f.b().c("CrashlyticsCore", "Failed to execute task.", localException);
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.x
 * JD-Core Version:    0.6.2
 */