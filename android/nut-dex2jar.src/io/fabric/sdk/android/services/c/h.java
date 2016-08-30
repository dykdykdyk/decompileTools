package io.fabric.sdk.android.services.c;

import io.fabric.sdk.android.services.b.l;

public final class h
  implements Runnable
{
  public h(g paramg, Object paramObject)
  {
  }

  public final void run()
  {
    try
    {
      this.c.c.a(this.a);
      if (this.b)
        this.c.c.c();
      return;
    }
    catch (Exception localException)
    {
      l.b(this.c.a, "Failed to record event.");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.c.h
 * JD-Core Version:    0.6.2
 */