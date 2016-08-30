package io.fabric.sdk.android.services.concurrency;

import android.os.Process;
import java.util.concurrent.atomic.AtomicBoolean;

final class c extends k<Params, Result>
{
  c(a parama)
  {
    super((byte)0);
  }

  public final Result call()
    throws Exception
  {
    a.a(this.a).set(true);
    Process.setThreadPriority(10);
    return a.a(this.a, this.a.e());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.c
 * JD-Core Version:    0.6.2
 */