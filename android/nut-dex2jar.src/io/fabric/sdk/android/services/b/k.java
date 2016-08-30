package io.fabric.sdk.android.services.b;

import android.os.Process;

public abstract class k
  implements Runnable
{
  public abstract void a();

  public final void run()
  {
    Process.setThreadPriority(10);
    a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.k
 * JD-Core Version:    0.6.2
 */