package com.crashlytics.android.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.j;
import io.fabric.sdk.android.services.b.q;
import io.fabric.sdk.android.services.b.x;
import io.fabric.sdk.android.services.b.y;
import io.fabric.sdk.android.services.d.c;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class a
  implements l
{
  final AtomicBoolean a = new AtomicBoolean();
  final AtomicBoolean b;
  private Context c;
  private e d;
  private x e;
  private io.fabric.sdk.android.services.e.f f;
  private f g;
  private c h;
  private q i;
  private io.fabric.sdk.android.services.network.l j;
  private long k = 0L;

  public a()
  {
    this(false);
  }

  public a(boolean paramBoolean)
  {
    this.b = new AtomicBoolean(paramBoolean);
  }

  @SuppressLint({"CommitPrefEdits"})
  protected final void a()
  {
    long l1;
    synchronized (this.h)
    {
      if (this.h.a().contains("last_update_check"))
        this.h.a(this.h.b().remove("last_update_check"));
      l1 = this.i.a();
      long l2 = this.f.b * 1000L;
      io.fabric.sdk.android.f.b().a("Beta", "Check for updates delay: " + l2);
      io.fabric.sdk.android.f.b().a("Beta", "Check for updates last check time: " + this.k);
      l2 += this.k;
      io.fabric.sdk.android.f.b().a("Beta", "Check for updates current time: " + l1 + ", next check time: " + l2);
      if (l1 < l2)
        break label309;
    }
    try
    {
      io.fabric.sdk.android.f.b().a("Beta", "Performing update check");
      new j();
      ??? = j.a(this.c);
      String str = (String)this.e.d().get(y.c);
      new g(this.d, io.fabric.sdk.android.services.b.l.d(this.d.q, "com.crashlytics.ApiEndpoint"), this.f.a, this.j, new i()).a((String)???, str, this.g);
      this.k = l1;
      return;
      localObject3 = finally;
      throw localObject3;
    }
    finally
    {
      this.k = l1;
    }
    label309: io.fabric.sdk.android.f.b().a("Beta", "Check for updates next check time was not passed");
  }

  public final void a(Context paramContext, e parame, x paramx, io.fabric.sdk.android.services.e.f paramf, f paramf1, c paramc, q paramq, io.fabric.sdk.android.services.network.l paraml)
  {
    this.c = paramContext;
    this.d = parame;
    this.e = paramx;
    this.f = paramf;
    this.g = paramf1;
    this.h = paramc;
    this.i = paramq;
    this.j = paraml;
    this.a.set(true);
    if (this.b.get())
      a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.b.a
 * JD-Core Version:    0.6.2
 */