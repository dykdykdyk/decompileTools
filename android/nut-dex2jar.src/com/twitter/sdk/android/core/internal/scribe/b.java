package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import io.fabric.sdk.android.services.c.o;
import java.util.concurrent.ScheduledExecutorService;

final class b extends io.fabric.sdk.android.services.c.b<g>
{
  private final o f;

  public b(Context paramContext, ScheduledExecutorService paramScheduledExecutorService, i parami, f paramf, ScribeFilesSender paramScribeFilesSender)
  {
    super(paramContext, paramScheduledExecutorService, parami);
    this.f = paramScribeFilesSender;
    this.e = paramf.h;
    a(0L, this.e);
  }

  public final o a()
  {
    return this.f;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.b
 * JD-Core Version:    0.6.2
 */