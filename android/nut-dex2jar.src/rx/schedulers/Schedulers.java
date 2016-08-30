package rx.schedulers;

import java.util.concurrent.Executor;
import rx.c.c.e;
import rx.c.c.l;
import rx.e.d;

public final class Schedulers
{
  private static final Schedulers d = new Schedulers();
  private final rx.r a;
  private final rx.r b;
  private final rx.r c;

  private Schedulers()
  {
    d.a().d();
    rx.e.f.a();
    this.a = new rx.c.c.a();
    d.a().d();
    rx.e.f.b();
    this.b = new a();
    d.a().d();
    rx.e.f.c();
    this.c = k.a();
  }

  public static rx.r computation()
  {
    return d.a;
  }

  public static rx.r from(Executor paramExecutor)
  {
    return new f(paramExecutor);
  }

  public static rx.r immediate()
  {
    return ImmediateScheduler.a();
  }

  public static rx.r io()
  {
    return d.b;
  }

  public static rx.r newThread()
  {
    return d.c;
  }

  public static void shutdown()
  {
    synchronized (d)
    {
      if ((???.a instanceof l))
        ((l)???.a).a();
      if ((???.b instanceof l))
        ((l)???.b).a();
      if ((???.c instanceof l))
        ((l)???.c).a();
      e.a.a();
      rx.c.d.f.e.a();
      rx.c.d.f.f.a();
      return;
    }
  }

  public static TestScheduler test()
  {
    return new TestScheduler();
  }

  public static rx.r trampoline()
  {
    return r.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.Schedulers
 * JD-Core Version:    0.6.2
 */