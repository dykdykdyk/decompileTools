package rx.c.c;

import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.aa;
import rx.b.a;
import rx.c.d.c;
import rx.c.d.i;
import rx.e.d;
import rx.exceptions.e;
import rx.s;

public class f extends s
  implements aa
{
  public static final int c;
  private static final boolean e;
  private static final ConcurrentHashMap<ScheduledThreadPoolExecutor, ScheduledThreadPoolExecutor> f = new ConcurrentHashMap();
  private static final AtomicReference<ScheduledExecutorService> g = new AtomicReference();
  private static volatile Object h;
  private static final Object i;
  final ScheduledExecutorService a;
  volatile boolean b;
  private final rx.e.f d;

  static
  {
    c = Integer.getInteger("rx.scheduler.jdk6.purge-frequency-millis", 1000).intValue();
    boolean bool = Boolean.getBoolean("rx.scheduler.jdk6.purge-force");
    int j = c.b();
    if ((!bool) && ((j == 0) || (j >= 21)));
    for (bool = true; ; bool = false)
    {
      e = bool;
      i = new Object();
      return;
    }
  }

  public f(ThreadFactory paramThreadFactory)
  {
    paramThreadFactory = Executors.newScheduledThreadPool(1, paramThreadFactory);
    if ((!b(paramThreadFactory)) && ((paramThreadFactory instanceof ScheduledThreadPoolExecutor)))
      a((ScheduledThreadPoolExecutor)paramThreadFactory);
    this.d = d.a().d();
    this.a = paramThreadFactory;
  }

  public static void a(ScheduledExecutorService paramScheduledExecutorService)
  {
    f.remove(paramScheduledExecutorService);
  }

  public static void a(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor)
  {
    while (true)
    {
      ScheduledExecutorService localScheduledExecutorService;
      if ((ScheduledExecutorService)g.get() == null)
      {
        localScheduledExecutorService = Executors.newScheduledThreadPool(1, new i("RxSchedulerPurge-"));
        if (g.compareAndSet(null, localScheduledExecutorService))
          localScheduledExecutorService.scheduleAtFixedRate(new g(), c, c, TimeUnit.MILLISECONDS);
      }
      else
      {
        f.putIfAbsent(paramScheduledThreadPoolExecutor, paramScheduledThreadPoolExecutor);
        return;
      }
      localScheduledExecutorService.shutdownNow();
    }
  }

  public static boolean b(ScheduledExecutorService paramScheduledExecutorService)
  {
    if (e)
    {
      Object localObject1;
      Object localObject2;
      if ((paramScheduledExecutorService instanceof ScheduledThreadPoolExecutor))
      {
        localObject1 = h;
        if (localObject1 == i)
          return false;
        if (localObject1 == null)
        {
          localObject1 = c(paramScheduledExecutorService);
          if (localObject1 != null)
            localObject2 = localObject1;
        }
      }
      while (true)
      {
        h = localObject2;
        label45: if (localObject1 != null)
          try
          {
            ((Method)localObject1).invoke(paramScheduledExecutorService, new Object[] { Boolean.valueOf(true) });
            return true;
            localObject2 = i;
            continue;
            localObject1 = (Method)localObject1;
            break label45;
            localObject1 = c(paramScheduledExecutorService);
          }
          catch (Exception paramScheduledExecutorService)
          {
            d.a().b();
          }
      }
    }
    return false;
  }

  private static Method c(ScheduledExecutorService paramScheduledExecutorService)
  {
    paramScheduledExecutorService = paramScheduledExecutorService.getClass().getMethods();
    int k = paramScheduledExecutorService.length;
    int j = 0;
    while (j < k)
    {
      Method localMethod = paramScheduledExecutorService[j];
      if (localMethod.getName().equals("setRemoveOnCancelPolicy"))
      {
        Class[] arrayOfClass = localMethod.getParameterTypes();
        if ((arrayOfClass.length == 1) && (arrayOfClass[0] == Boolean.TYPE))
          return localMethod;
      }
      j += 1;
    }
    return null;
  }

  static void c()
  {
    while (true)
    {
      try
      {
        Iterator localIterator = f.keySet().iterator();
        if (localIterator.hasNext())
        {
          ScheduledThreadPoolExecutor localScheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor)localIterator.next();
          if (localScheduledThreadPoolExecutor.isShutdown())
            break label58;
          localScheduledThreadPoolExecutor.purge();
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        e.a(localThrowable);
        d.a().b();
      }
      return;
      label58: localThrowable.remove();
    }
  }

  public final aa a(a parama)
  {
    return a(parama, 0L, null);
  }

  public final aa a(a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.b)
      return rx.f.h.b();
    return b(parama, paramLong, paramTimeUnit);
  }

  public final h b(a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    h localh = new h(rx.e.f.a(parama));
    if (paramLong <= 0L);
    for (parama = this.a.submit(localh); ; parama = this.a.schedule(localh, paramLong, paramTimeUnit))
    {
      localh.a(parama);
      return localh;
    }
  }

  public final boolean b()
  {
    return this.b;
  }

  public final void n_()
  {
    this.b = true;
    this.a.shutdownNow();
    a(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.c.f
 * JD-Core Version:    0.6.2
 */