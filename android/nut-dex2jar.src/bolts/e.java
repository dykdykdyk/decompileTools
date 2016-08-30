package bolts;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

final class e
{
  private static final e a = new e();
  private final ExecutorService b;
  private final Executor c;

  private e()
  {
    Object localObject = System.getProperty("java.runtime.name");
    boolean bool;
    if (localObject == null)
    {
      bool = false;
      if (bool)
        break label58;
    }
    label58: for (localObject = Executors.newCachedThreadPool(); ; localObject = a.a())
    {
      this.b = ((ExecutorService)localObject);
      this.c = new f((byte)0);
      return;
      bool = ((String)localObject).toLowerCase(Locale.US).contains("android");
      break;
    }
  }

  public static ExecutorService a()
  {
    return a.b;
  }

  static Executor b()
  {
    return a.c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     bolts.e
 * JD-Core Version:    0.6.2
 */