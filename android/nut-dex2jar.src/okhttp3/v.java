package okhttp3;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.o;

public final class v
{
  private int a = 64;
  private int b = 5;
  private ExecutorService c;
  private final Deque<as> d = new ArrayDeque();
  private final Deque<as> e = new ArrayDeque();
  private final Deque<aq> f = new ArrayDeque();

  private ExecutorService a()
  {
    try
    {
      if (this.c == null)
        this.c = new ThreadPoolExecutor(0, 2147483647, 60L, TimeUnit.SECONDS, new SynchronousQueue(), o.a("OkHttp Dispatcher", false));
      ExecutorService localExecutorService = this.c;
      return localExecutorService;
    }
    finally
    {
    }
  }

  private void b()
  {
    if (this.e.size() >= this.a);
    do
    {
      Iterator localIterator;
      do
      {
        return;
        while (this.d.isEmpty());
        localIterator = this.d.iterator();
      }
      while (!localIterator.hasNext());
      as localas = (as)localIterator.next();
      if (c(localas) < this.b)
      {
        localIterator.remove();
        this.e.add(localas);
        a().execute(localas);
      }
    }
    while (this.e.size() < this.a);
  }

  private int c(as paramas)
  {
    Iterator localIterator = this.e.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      if (!((as)localIterator.next()).a().equals(paramas.a()))
        break label52;
      i += 1;
    }
    label52: 
    while (true)
    {
      break;
      return i;
    }
  }

  final void a(aq paramaq)
  {
    try
    {
      this.f.add(paramaq);
      return;
    }
    finally
    {
      paramaq = finally;
    }
    throw paramaq;
  }

  final void a(as paramas)
  {
    try
    {
      if ((this.e.size() < this.a) && (c(paramas) < this.b))
      {
        this.e.add(paramas);
        a().execute(paramas);
      }
      while (true)
      {
        return;
        this.d.add(paramas);
      }
    }
    finally
    {
    }
    throw paramas;
  }

  final void a(g paramg)
  {
    try
    {
      if (!this.f.remove(paramg))
        throw new AssertionError("Call wasn't in-flight!");
    }
    finally
    {
    }
  }

  final void b(as paramas)
  {
    try
    {
      if (!this.e.remove(paramas))
        throw new AssertionError("AsyncCall wasn't running!");
    }
    finally
    {
    }
    b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.v
 * JD-Core Version:    0.6.2
 */