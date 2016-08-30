package com.twitter.sdk.android.core.internal.scribe;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.twitter.sdk.android.core.q;
import com.twitter.sdk.android.core.r;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.services.b.t;
import io.fabric.sdk.android.services.b.x;
import io.fabric.sdk.android.services.e.v;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

public class a extends e
{
  private static volatile ScheduledExecutorService d;
  public final o a;
  public final String b;
  private final List<r<? extends q>> e;

  private a(o paramo, String paramString, Gson paramGson, List<r<? extends q>> paramList, x paramx)
  {
  }

  public a(o paramo, String paramString, List<r<? extends q>> paramList, x paramx)
  {
    this(paramo, paramString, new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES).create(), paramList, paramx);
  }

  private static ScheduledExecutorService a()
  {
    if (d == null);
    try
    {
      if (d == null)
        d = t.a("scribe");
      return d;
    }
    finally
    {
    }
  }

  public final void a(g paramg)
  {
    Object localObject = null;
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
    {
      q localq = ((r)localIterator.next()).a();
      localObject = localq;
      if (localq != null)
        localObject = localq;
    }
    if (localObject != null);
    for (long l = localObject.b; ; l = 0L)
    {
      super.a(paramg, l);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.a
 * JD-Core Version:    0.6.2
 */