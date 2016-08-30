package io.fabric.sdk.android;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import io.fabric.sdk.android.services.b.x;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.concurrency.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

public class f
{
  static volatile f a;
  static final r b = new e((byte)0);
  public final ExecutorService c;
  public a d;
  public WeakReference<Activity> e;
  final r f;
  final boolean g;
  private final Context h;
  private final Map<Class<? extends o>, o> i;
  private final Handler j;
  private final l<f> k;
  private final l<?> l;
  private final x m;
  private AtomicBoolean n;

  private f(Context paramContext, Map<Class<? extends o>, o> paramMap, w paramw, Handler paramHandler, r paramr, boolean paramBoolean, l paraml, x paramx)
  {
    this.h = paramContext;
    this.i = paramMap;
    this.c = paramw;
    this.j = paramHandler;
    this.f = paramr;
    this.g = paramBoolean;
    this.k = paraml;
    this.n = new AtomicBoolean(false);
    this.l = new h(this, paramMap.size());
    this.m = paramx;
  }

  public static f a(Context paramContext, o[] paramArrayOfo)
  {
    i locali;
    if (a == null)
    {
      try
      {
        if (a != null)
          break label285;
        locali = new i(paramContext);
        if (locali.b != null)
          throw new IllegalStateException("Kits already set.");
      }
      finally
      {
      }
      locali.b = paramArrayOfo;
      if (locali.c == null)
        locali.c = w.a();
      if (locali.d == null)
        locali.d = new Handler(Looper.getMainLooper());
      if (locali.e == null)
      {
        if (!locali.f)
          break label292;
        locali.e = new e();
      }
      if (locali.h == null)
        locali.h = locali.a.getPackageName();
      if (locali.i == null)
        locali.i = l.d;
      if (locali.b != null)
        break label307;
      paramContext = new HashMap();
      label159: paramArrayOfo = new x(locali.a, locali.h, locali.g, paramContext.values());
      paramArrayOfo = new f(locali.a, paramContext, locali.c, locali.d, locali.e, locali.f, locali.i, paramArrayOfo);
      a = paramArrayOfo;
      paramContext = paramArrayOfo.h;
      if (!(paramContext instanceof Activity))
        break label337;
    }
    label285: label292: label307: label337: for (paramContext = (Activity)paramContext; ; paramContext = null)
    {
      paramArrayOfo.a(paramContext);
      paramArrayOfo.d = new a(paramArrayOfo.h);
      paramArrayOfo.d.a(new g(paramArrayOfo));
      paramArrayOfo.a(paramArrayOfo.h);
      return a;
      locali.e = new e((byte)0);
      break;
      paramArrayOfo = Arrays.asList(locali.b);
      paramContext = new HashMap(paramArrayOfo.size());
      a(paramContext, paramArrayOfo);
      break label159;
    }
  }

  public static <T extends o> T a(Class<T> paramClass)
  {
    if (a == null)
      throw new IllegalStateException("Must Initialize Fabric before using singleton()");
    return (o)a.i.get(paramClass);
  }

  public static String a()
  {
    return "1.3.10.97";
  }

  private void a(Context paramContext)
  {
    Object localObject1 = new k(paramContext.getPackageCodePath());
    localObject1 = this.c.submit((Callable)localObject1);
    Object localObject2 = this.i.values();
    localObject1 = new s((Future)localObject1, (Collection)localObject2);
    localObject2 = new ArrayList((Collection)localObject2);
    Collections.sort((List)localObject2);
    ((s)localObject1).a(paramContext, this, l.d, this.m);
    Object localObject3 = ((List)localObject2).iterator();
    while (((Iterator)localObject3).hasNext())
      ((o)((Iterator)localObject3).next()).a(paramContext, this, this.l, this.m);
    ((s)localObject1).j();
    if (b().a(3));
    for (paramContext = new StringBuilder("Initializing io.fabric.sdk.android:fabric [Version: 1.3.10.97], with the following kits:\n"); ; paramContext = null)
    {
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (o)((Iterator)localObject2).next();
        ((o)localObject3).p.a(((s)localObject1).p);
        a(this.i, (o)localObject3);
        ((o)localObject3).j();
        if (paramContext != null)
          paramContext.append(((o)localObject3).b()).append(" [Version: ").append(((o)localObject3).a()).append("]\n");
      }
    }
    if (paramContext != null)
      b().a("Fabric", paramContext.toString());
  }

  private static void a(Map<Class<? extends o>, o> paramMap, o paramo)
  {
    Object localObject1 = (io.fabric.sdk.android.services.concurrency.n)paramo.getClass().getAnnotation(io.fabric.sdk.android.services.concurrency.n.class);
    if (localObject1 != null)
    {
      localObject1 = ((io.fabric.sdk.android.services.concurrency.n)localObject1).a();
      int i2 = localObject1.length;
      int i1 = 0;
      while (i1 < i2)
      {
        Object localObject2 = localObject1[i1];
        if (localObject2.isInterface())
        {
          Iterator localIterator = paramMap.values().iterator();
          while (localIterator.hasNext())
          {
            o localo = (o)localIterator.next();
            if (localObject2.isAssignableFrom(localo.getClass()))
              paramo.p.a(localo.p);
          }
        }
        if ((o)paramMap.get(localObject2) == null)
          throw new UnmetDependencyException("Referenced Kit was null, does the kit exist?");
        paramo.p.a(((o)paramMap.get(localObject2)).p);
        i1 += 1;
      }
    }
  }

  private static void a(Map<Class<? extends o>, o> paramMap, Collection<? extends o> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      o localo = (o)paramCollection.next();
      paramMap.put(localo.getClass(), localo);
      if ((localo instanceof p))
        a(paramMap, ((p)localo).c());
    }
  }

  public static r b()
  {
    if (a == null)
      return b;
    return a.f;
  }

  public static boolean c()
  {
    if (a == null)
      return false;
    return a.g;
  }

  public final f a(Activity paramActivity)
  {
    this.e = new WeakReference(paramActivity);
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.f
 * JD-Core Version:    0.6.2
 */