package io.fabric.sdk.android.services.b;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

final class w extends k
{
  w(String paramString, ExecutorService paramExecutorService, TimeUnit paramTimeUnit)
  {
  }

  public final void a()
  {
    try
    {
      f.b().a("Fabric", "Executing shutdown hook for " + this.a);
      this.b.shutdown();
      if (!this.b.awaitTermination(this.c, this.d))
      {
        f.b().a("Fabric", this.a + " did not shut down in the allocated time. Requesting immediate shutdown.");
        this.b.shutdownNow();
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      f.b().a("Fabric", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", new Object[] { this.a }));
      this.b.shutdownNow();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.w
 * JD-Core Version:    0.6.2
 */