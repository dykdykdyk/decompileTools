package com.crashlytics.android.a;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;

final class e
  implements Runnable
{
  e(b paramb)
  {
  }

  public final void run()
  {
    try
    {
      this.a.g.a();
      return;
    }
    catch (Exception localException)
    {
      f.b().c("Answers", "Failed to send events files", localException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.e
 * JD-Core Version:    0.6.2
 */