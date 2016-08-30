package u.aly;

import com.umeng.analytics.a;

public final class l
  implements Thread.UncaughtExceptionHandler
{
  public s a;
  private Thread.UncaughtExceptionHandler b;

  public l()
  {
    if (Thread.getDefaultUncaughtExceptionHandler() == this)
      return;
    this.b = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (a.h)
      this.a.a(paramThrowable);
    while (true)
    {
      if ((this.b != null) && (this.b != Thread.getDefaultUncaughtExceptionHandler()))
        this.b.uncaughtException(paramThread, paramThrowable);
      return;
      this.a.a(null);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.l
 * JD-Core Version:    0.6.2
 */