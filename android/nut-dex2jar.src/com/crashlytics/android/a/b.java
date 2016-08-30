package com.crashlytics.android.a;

import android.content.Context;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.r;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;

public final class b
  implements io.fabric.sdk.android.services.c.l
{
  final o a;
  final Context b;
  final i c;
  final ag d;
  final io.fabric.sdk.android.services.network.l e;
  final ScheduledExecutorService f;
  aa g = new p();

  public b(o paramo, Context paramContext, i parami, ag paramag, io.fabric.sdk.android.services.network.l paraml, ScheduledExecutorService paramScheduledExecutorService)
  {
    this.a = paramo;
    this.b = paramContext;
    this.c = parami;
    this.d = paramag;
    this.e = paraml;
    this.f = paramScheduledExecutorService;
  }

  public final void a()
  {
    a(new e(this));
  }

  public final void a(ac paramac, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramac = new h(this, paramac, paramBoolean2);
    if (paramBoolean1)
      try
      {
        this.f.submit(paramac).get();
        return;
      }
      catch (Exception paramac)
      {
        f.b().c("Answers", "Failed to run events task", paramac);
        return;
      }
    a(paramac);
  }

  final void a(Runnable paramRunnable)
  {
    try
    {
      this.f.submit(paramRunnable);
      return;
    }
    catch (Exception paramRunnable)
    {
      f.b().c("Answers", "Failed to submit events task", paramRunnable);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.b
 * JD-Core Version:    0.6.2
 */