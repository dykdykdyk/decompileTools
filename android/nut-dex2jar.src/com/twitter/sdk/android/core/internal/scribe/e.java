package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.r;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.services.b.ah;
import io.fabric.sdk.android.services.b.x;
import io.fabric.sdk.android.services.c.a;
import io.fabric.sdk.android.services.c.m;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import javax.net.ssl.SSLSocketFactory;

public class e
{
  private final o a;
  private final ScheduledExecutorService b;
  final ConcurrentHashMap<Long, l> c;
  private final f d;
  private final h e;
  private final TwitterAuthConfig f;
  private final List<r<? extends com.twitter.sdk.android.core.q>> g;
  private final SSLSocketFactory h;
  private final x i;

  public e(o paramo, ScheduledExecutorService paramScheduledExecutorService, f paramf, h paramh, TwitterAuthConfig paramTwitterAuthConfig, List<r<? extends com.twitter.sdk.android.core.q>> paramList, SSLSocketFactory paramSSLSocketFactory, x paramx)
  {
    this.a = paramo;
    this.b = paramScheduledExecutorService;
    this.d = paramf;
    this.e = paramh;
    this.f = paramTwitterAuthConfig;
    this.g = paramList;
    this.h = paramSSLSocketFactory;
    this.i = paramx;
    this.c = new ConcurrentHashMap(2);
  }

  public final boolean a(g paramg, long paramLong)
  {
    try
    {
      ConcurrentHashMap localConcurrentHashMap;
      Context localContext;
      i locali;
      if (!this.c.containsKey(Long.valueOf(paramLong)))
      {
        localConcurrentHashMap = this.c;
        localContext = this.a.q;
        localObject = new io.fabric.sdk.android.services.c.q(localContext, new io.fabric.sdk.android.services.d.b(this.a).a(), paramLong + "_se.tap", paramLong + "_se_to_send");
        locali = new i(localContext, this.e, new ah(), (io.fabric.sdk.android.services.c.q)localObject, this.d.g);
        localObject = this.a.q;
        if (!this.d.a)
          break label264;
        io.fabric.sdk.android.services.b.l.a((Context)localObject, "Scribe enabled");
      }
      for (Object localObject = new b((Context)localObject, this.b, locali, this.d, new ScribeFilesSender((Context)localObject, this.d, paramLong, this.f, this.g, this.h, this.b, this.i)); ; localObject = new a())
      {
        localConcurrentHashMap.putIfAbsent(Long.valueOf(paramLong), new l(localContext, (m)localObject, locali, this.b));
        localObject = (l)this.c.get(Long.valueOf(paramLong));
        ((io.fabric.sdk.android.services.c.g)localObject).a(new io.fabric.sdk.android.services.c.h((io.fabric.sdk.android.services.c.g)localObject, paramg));
        return true;
        label264: io.fabric.sdk.android.services.b.l.a((Context)localObject, "Scribe disabled");
      }
    }
    catch (IOException paramg)
    {
      io.fabric.sdk.android.services.b.l.b(this.a.q, "Failed to scribe event");
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.e
 * JD-Core Version:    0.6.2
 */