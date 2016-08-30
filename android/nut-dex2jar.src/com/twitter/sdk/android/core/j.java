package com.twitter.sdk.android.core;

import android.content.SharedPreferences;
import io.fabric.sdk.android.services.d.c;
import io.fabric.sdk.android.services.d.e;
import io.fabric.sdk.android.services.d.f;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

public final class j<T extends q>
  implements r<T>
{
  private final c a;
  private final f<T> b;
  private final ConcurrentHashMap<Long, T> c;
  private final ConcurrentHashMap<Long, e<T>> d;
  private final e<T> e;
  private final AtomicReference<T> f;
  private final String g;
  private final String h;
  private volatile boolean i = true;

  public j(c paramc, f<T> paramf, String paramString1, String paramString2)
  {
    this(paramc, paramf, new ConcurrentHashMap(1), new ConcurrentHashMap(1), new e(paramc, paramf, paramString1), paramString1, paramString2);
  }

  private j(c paramc, f<T> paramf, ConcurrentHashMap<Long, T> paramConcurrentHashMap, ConcurrentHashMap<Long, e<T>> paramConcurrentHashMap1, e<T> parame, String paramString1, String paramString2)
  {
    this.a = paramc;
    this.b = paramf;
    this.c = paramConcurrentHashMap;
    this.d = paramConcurrentHashMap1;
    this.e = parame;
    this.f = new AtomicReference();
    this.g = paramString1;
    this.h = paramString2;
  }

  private void a(long paramLong, T paramT, boolean paramBoolean)
  {
    this.c.put(Long.valueOf(paramLong), paramT);
    e locale = (e)this.d.get(Long.valueOf(paramLong));
    Object localObject = locale;
    if (locale == null)
    {
      localObject = new e(this.a, this.b, this.h + "_" + paramLong);
      this.d.putIfAbsent(Long.valueOf(paramLong), localObject);
    }
    ((e)localObject).a(paramT);
    localObject = (q)this.f.get();
    if ((localObject == null) || (paramBoolean))
      try
      {
        this.f.compareAndSet(localObject, paramT);
        this.e.a(paramT);
        return;
      }
      finally
      {
      }
  }

  private void c()
  {
    if (this.i)
      d();
  }

  private void d()
  {
    try
    {
      if (!this.i)
        break label174;
      Object localObject1 = this.e;
      Object localObject3 = ((e)localObject1).a.a();
      localObject1 = (q)((e)localObject1).b.a(((SharedPreferences)localObject3).getString(((e)localObject1).c, null));
      if (localObject1 != null)
        a(((q)localObject1).b, (q)localObject1, false);
      localObject1 = this.a.a().getAll().entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject1).next();
        if (((String)((Map.Entry)localObject3).getKey()).startsWith(this.h))
        {
          localObject3 = (q)this.b.a((String)((Map.Entry)localObject3).getValue());
          if (localObject3 != null)
            a(((q)localObject3).b, (q)localObject3, false);
        }
      }
    }
    finally
    {
    }
    this.i = false;
    label174:
  }

  public final T a()
  {
    c();
    return (q)this.f.get();
  }

  public final T a(long paramLong)
  {
    c();
    return (q)this.c.get(Long.valueOf(paramLong));
  }

  public final void a(T paramT)
  {
    if (paramT == null)
      throw new IllegalArgumentException("Session must not be null!");
    c();
    a(paramT.b, paramT, true);
  }

  public final Map<Long, T> b()
  {
    c();
    return Collections.unmodifiableMap(this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.j
 * JD-Core Version:    0.6.2
 */