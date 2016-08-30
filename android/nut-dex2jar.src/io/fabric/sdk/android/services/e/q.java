package io.fabric.sdk.android.services.e;

import android.content.Context;
import android.os.Build.VERSION;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.services.b.ah;
import io.fabric.sdk.android.services.b.x;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

public final class q
{
  private final AtomicReference<v> a = new AtomicReference();
  private final CountDownLatch b = new CountDownLatch(1);
  private u c;
  private boolean d = false;

  private void a(v paramv)
  {
    this.a.set(paramv);
    this.b.countDown();
  }

  public final q a(o paramo, x paramx, io.fabric.sdk.android.services.network.l paraml, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      boolean bool = this.d;
      if (bool);
      while (true)
      {
        return this;
        if (this.c == null)
        {
          Context localContext = paramo.q;
          String str4 = paramx.c;
          new io.fabric.sdk.android.services.b.j();
          String str1 = io.fabric.sdk.android.services.b.j.a(localContext);
          String str2 = paramx.e();
          ah localah = new ah();
          k localk = new k();
          i locali = new i(paramo);
          String str3 = io.fabric.sdk.android.services.b.l.i(localContext);
          paraml = new l(paramo, paramString3, String.format(Locale.US, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings", new Object[] { str4 }), paraml);
          this.c = new j(paramo, new y(str1, x.b(), x.a(Build.VERSION.INCREMENTAL), x.a(Build.VERSION.RELEASE), paramx.g(), paramx.a(), paramx.h(), io.fabric.sdk.android.services.b.l.a(new String[] { io.fabric.sdk.android.services.b.l.k(localContext) }), paramString2, paramString1, io.fabric.sdk.android.services.b.r.a(str2).e, str3), localah, localk, locali, paraml);
        }
        this.d = true;
      }
    }
    finally
    {
    }
    throw paramo;
  }

  public final v a()
  {
    try
    {
      this.b.await();
      v localv = (v)this.a.get();
      return localv;
    }
    catch (InterruptedException localInterruptedException)
    {
      f.b().e("Fabric", "Interrupted while waiting for settings data.");
    }
    return null;
  }

  public final <T> T a(s<T> params, T paramT)
  {
    v localv = (v)this.a.get();
    if (localv == null)
      return paramT;
    return params.a(localv);
  }

  public final boolean b()
  {
    try
    {
      v localv = this.c.a();
      a(localv);
      if (localv != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final boolean c()
  {
    try
    {
      v localv = this.c.a(t.b);
      a(localv);
      if (localv == null)
        f.b().c("Fabric", "Failed to force reload of settings from Crashlytics.", null);
      if (localv != null);
      for (boolean bool = true; ; bool = false)
        return bool;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.e.q
 * JD-Core Version:    0.6.2
 */