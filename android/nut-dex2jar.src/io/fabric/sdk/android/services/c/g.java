package io.fabric.sdk.android.services.c;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

public abstract class g<T>
  implements l
{
  protected final Context a;
  protected final ScheduledExecutorService b;
  protected m<T> c;

  public g(Context paramContext, m<T> paramm, d paramd, ScheduledExecutorService paramScheduledExecutorService)
  {
    this.a = paramContext.getApplicationContext();
    this.b = paramScheduledExecutorService;
    this.c = paramm;
    paramd.a(this);
  }

  public final void a()
  {
    a(new i(this));
  }

  public final void a(Runnable paramRunnable)
  {
    try
    {
      this.b.submit(paramRunnable);
      return;
    }
    catch (Exception paramRunnable)
    {
      io.fabric.sdk.android.services.b.l.b(this.a, "Failed to submit events task");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.c.g
 * JD-Core Version:    0.6.2
 */