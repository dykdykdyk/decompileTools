package com.crashlytics.android.a;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;

final class g
  implements Runnable
{
  g(b paramb)
  {
  }

  public final void run()
  {
    try
    {
      this.a.g.c();
      return;
    }
    catch (Exception localException)
    {
      f.b().c("Answers", "Failed to flush events", localException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.g
 * JD-Core Version:    0.6.2
 */