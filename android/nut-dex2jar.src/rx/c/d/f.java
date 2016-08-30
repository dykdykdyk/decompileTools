package rx.c.d;

import java.io.PrintStream;
import java.util.Queue;
import rx.aa;
import rx.c.a.b;
import rx.c.d.b.y;

public final class f
  implements aa
{
  static int c;
  public static final int d;
  public static a<Queue<Object>> e;
  public static a<Queue<Object>> f;
  private static final b<Object> g = b.a();
  public Queue<Object> a;
  public volatile Object b;
  private final int h;
  private final a<Queue<Object>> i;

  static
  {
    c = 128;
    if (c.a())
      c = 16;
    String str = System.getProperty("rx.ring-buffer.size");
    if (str != null);
    try
    {
      c = Integer.parseInt(str);
      d = c;
      e = new g();
      f = new h();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        System.err.println("Failed to set 'rx.buffer.size' with value " + str + " => " + localException.getMessage());
    }
  }

  f()
  {
    this(new t(d), d);
  }

  private f(Queue<Object> paramQueue, int paramInt)
  {
    this.a = paramQueue;
    this.i = null;
    this.h = paramInt;
  }

  private f(a<Queue<Object>> parama, int paramInt)
  {
    this.i = parama;
    this.a = ((Queue)parama.b());
    this.h = paramInt;
  }

  public static f c()
  {
    if (y.a())
      return new f(e, d);
    return new f();
  }

  public final boolean b()
  {
    return this.a == null;
  }

  public final void d()
  {
    try
    {
      Queue localQueue = this.a;
      a locala = this.i;
      if ((locala != null) && (localQueue != null))
      {
        localQueue.clear();
        this.a = null;
        if (localQueue != null)
          locala.a.offer(localQueue);
      }
      return;
    }
    finally
    {
    }
  }

  public final Object e()
  {
    while (true)
      try
      {
        Queue localQueue = this.a;
        if (localQueue == null)
          return null;
        Object localObject1 = localQueue.poll();
        Object localObject3 = this.b;
        if ((localObject1 == null) && (localObject3 != null) && (localQueue.peek() == null))
        {
          this.b = null;
          localObject1 = localObject3;
          return localObject1;
        }
      }
      finally
      {
      }
  }

  public final void n_()
  {
    d();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.f
 * JD-Core Version:    0.6.2
 */