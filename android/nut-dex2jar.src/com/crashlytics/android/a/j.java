package com.crashlytics.android.a;

import android.app.Activity;
import io.fabric.sdk.android.d;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class j extends d
{
  private final z a;
  private final m b;

  public j(z paramz, m paramm)
  {
    this.a = paramz;
    this.b = paramm;
  }

  public final void a(Activity paramActivity)
  {
  }

  public final void b(Activity paramActivity)
  {
    this.a.a(paramActivity, ad.a);
  }

  public final void c(Activity paramActivity)
  {
    this.a.a(paramActivity, ad.b);
    paramActivity = this.b;
    paramActivity.e = false;
    paramActivity = (ScheduledFuture)paramActivity.d.getAndSet(null);
    if (paramActivity != null)
      paramActivity.cancel(false);
  }

  public final void d(Activity paramActivity)
  {
    this.a.a(paramActivity, ad.c);
    paramActivity = this.b;
    if ((paramActivity.c) && (!paramActivity.e))
      paramActivity.e = true;
    try
    {
      paramActivity.d.compareAndSet(null, paramActivity.a.schedule(new n(paramActivity), 5000L, TimeUnit.MILLISECONDS));
      return;
    }
    catch (RejectedExecutionException paramActivity)
    {
      f.b().a("Answers", "Failed to schedule background detector", paramActivity);
    }
  }

  public final void e(Activity paramActivity)
  {
    this.a.a(paramActivity, ad.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.j
 * JD-Core Version:    0.6.2
 */