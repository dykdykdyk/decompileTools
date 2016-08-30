package com.crashlytics.android.a;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;

final class d
  implements Runnable
{
  d(b paramb)
  {
  }

  public final void run()
  {
    try
    {
      aa localaa = this.a.g;
      this.a.g = new p();
      localaa.b();
      return;
    }
    catch (Exception localException)
    {
      f.b().c("Answers", "Failed to disable events", localException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.d
 * JD-Core Version:    0.6.2
 */