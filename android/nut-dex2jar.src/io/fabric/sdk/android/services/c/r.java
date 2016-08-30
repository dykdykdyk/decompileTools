package io.fabric.sdk.android.services.c;

import android.content.Context;
import io.fabric.sdk.android.services.b.l;

public final class r
  implements Runnable
{
  private final Context a;
  private final n b;

  public r(Context paramContext, n paramn)
  {
    this.a = paramContext;
    this.b = paramn;
  }

  public final void run()
  {
    try
    {
      l.a(this.a, "Performing time based file roll over.");
      if (!this.b.c())
        this.b.d();
      return;
    }
    catch (Exception localException)
    {
      l.b(this.a, "Failed to roll over file");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.c.r
 * JD-Core Version:    0.6.2
 */