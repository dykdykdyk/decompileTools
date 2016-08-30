package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.services.b.l;
import io.fabric.sdk.android.services.e.q;
import io.fabric.sdk.android.services.e.v;
import java.io.File;

final class ao
  implements Runnable
{
  private final h a;
  private final File b;

  public ao(h paramh, File paramFile)
  {
    this.a = paramh;
    this.b = paramFile;
  }

  public final void run()
  {
    if (!l.l(this.a.q));
    Object localObject;
    do
    {
      return;
      f.b().a("CrashlyticsCore", "Attempting to send crash report at time of crash...");
      localObject = io.fabric.sdk.android.services.e.r.a().a();
      localObject = this.a.a((v)localObject);
    }
    while (localObject == null);
    new bv((ar)localObject).a(new bz(this.b, ab.b()));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.ao
 * JD-Core Version:    0.6.2
 */