package bolts;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

final class f
  implements Executor
{
  private ThreadLocal<Integer> a = new ThreadLocal();

  private int a()
  {
    Integer localInteger2 = (Integer)this.a.get();
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null)
      localInteger1 = Integer.valueOf(0);
    int i = localInteger1.intValue() - 1;
    if (i == 0)
    {
      this.a.remove();
      return i;
    }
    this.a.set(Integer.valueOf(i));
    return i;
  }

  public final void execute(Runnable paramRunnable)
  {
    Integer localInteger2 = (Integer)this.a.get();
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null)
      localInteger1 = Integer.valueOf(0);
    int i = localInteger1.intValue() + 1;
    this.a.set(Integer.valueOf(i));
    if (i <= 15);
    try
    {
      paramRunnable.run();
      while (true)
      {
        return;
        e.a().execute(paramRunnable);
      }
    }
    finally
    {
      a();
    }
    throw paramRunnable;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     bolts.f
 * JD-Core Version:    0.6.2
 */