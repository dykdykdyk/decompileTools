package com.crashlytics.android.a;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;

final class h
  implements Runnable
{
  h(b paramb, ac paramac, boolean paramBoolean)
  {
  }

  public final void run()
  {
    try
    {
      this.c.g.a(this.a);
      if (this.b)
        this.c.g.c();
      return;
    }
    catch (Exception localException)
    {
      f.b().c("Answers", "Failed to process event", localException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.h
 * JD-Core Version:    0.6.2
 */