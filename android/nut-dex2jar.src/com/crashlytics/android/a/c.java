package com.crashlytics.android.a;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;

final class c
  implements Runnable
{
  c(b paramb, io.fabric.sdk.android.services.e.b paramb1, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      this.c.g.a(this.a, this.b);
      return;
    }
    catch (Exception localException)
    {
      f.b().c("Answers", "Failed to set analytics settings data", localException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.c
 * JD-Core Version:    0.6.2
 */