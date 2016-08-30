package okhttp3;

import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import okhttp3.internal.b.c;
import okhttp3.internal.f;
import okhttp3.internal.n;

public final class o
{
  static final Executor a;
  final int b = 5;
  final Runnable c = new p(this);
  final Deque<c> d = new ArrayDeque();
  final n e = new n();
  boolean f;
  private final long h;

  static
  {
    if (!o.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      g = bool;
      a = new ThreadPoolExecutor(0, 2147483647, 60L, TimeUnit.SECONDS, new SynchronousQueue(), okhttp3.internal.o.a("OkHttp ConnectionPool", true));
      return;
    }
  }

  public o()
  {
    this(TimeUnit.MINUTES);
  }

  private o(TimeUnit paramTimeUnit)
  {
    this.h = paramTimeUnit.toNanos(5L);
    if (5L <= 0L)
      throw new IllegalArgumentException("keepAliveDuration <= 0: 5");
  }

  final long a(long paramLong)
  {
    Object localObject1 = null;
    long l1 = -9223372036854775808L;
    while (true)
    {
      int j;
      int i;
      int k;
      try
      {
        Iterator localIterator = this.d.iterator();
        j = 0;
        i = 0;
        if (localIterator.hasNext())
        {
          c localc = (c)localIterator.next();
          List localList = localc.k;
          k = 0;
          if (k < localList.size())
          {
            if (((Reference)localList.get(k)).get() != null)
            {
              k += 1;
              continue;
            }
            f.a.warning("A connection to " + localc.b.a.a + " was leaked. Did you forget to close a response body?");
            localList.remove(k);
            localc.l = true;
            if (!localList.isEmpty())
              continue;
            localc.m = (paramLong - this.h);
            k = 0;
            break label311;
          }
          k = localList.size();
          break label311;
          long l2 = paramLong - localc.m;
          if (l2 <= l1)
            break label308;
          localObject1 = localc;
          l1 = l2;
          break label323;
        }
        if ((l1 >= this.h) || (j > this.b))
        {
          this.d.remove(localObject1);
          okhttp3.internal.o.a(localObject1.d);
          return 0L;
        }
        if (j > 0)
        {
          paramLong = this.h;
          return paramLong - l1;
        }
      }
      finally
      {
      }
      if (i > 0)
      {
        paramLong = this.h;
        return paramLong;
      }
      this.f = false;
      return -1L;
      label308: label311: if (k > 0)
      {
        i += 1;
        continue;
        label323: j += 1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.o
 * JD-Core Version:    0.6.2
 */