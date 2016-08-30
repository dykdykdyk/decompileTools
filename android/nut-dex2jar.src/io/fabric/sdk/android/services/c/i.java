package io.fabric.sdk.android.services.c;

import io.fabric.sdk.android.services.b.l;

final class i
  implements Runnable
{
  i(g paramg)
  {
  }

  public final void run()
  {
    try
    {
      this.a.c.b();
      return;
    }
    catch (Exception localException)
    {
      l.b(this.a.a, "Failed to send events files.");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.c.i
 * JD-Core Version:    0.6.2
 */