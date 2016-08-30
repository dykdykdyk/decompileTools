package com.crashlytics.android.b;

import android.app.Activity;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

final class c extends io.fabric.sdk.android.d
{
  c(b paramb)
  {
  }

  public final void b(Activity paramActivity)
  {
    paramActivity = this.a;
    paramActivity.b.set(true);
    if (paramActivity.a.get())
      this.a.c.submit(new d(this));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.b.c
 * JD-Core Version:    0.6.2
 */