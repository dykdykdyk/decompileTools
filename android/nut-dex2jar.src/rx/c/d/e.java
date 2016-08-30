package rx.c.d;

import java.io.PrintStream;
import rx.e.d;

public final class e
{
  public static void a()
  {
    try
    {
      d.a().b();
      return;
    }
    catch (Throwable localThrowable)
    {
      System.err.println("RxJavaErrorHandler threw an Exception. It shouldn't. => " + localThrowable.getMessage());
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.e
 * JD-Core Version:    0.6.2
 */