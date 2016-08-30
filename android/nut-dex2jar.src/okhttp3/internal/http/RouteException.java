package okhttp3.internal.http;

import java.io.IOException;
import java.lang.reflect.Method;

public final class RouteException extends Exception
{
  public static final Method a;
  public IOException b;

  static
  {
    try
    {
      Method localMethod = Throwable.class.getDeclaredMethod("addSuppressed", new Class[] { Throwable.class });
      a = localMethod;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Object localObject = null;
    }
  }

  public RouteException(IOException paramIOException)
  {
    super(paramIOException);
    this.b = paramIOException;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.RouteException
 * JD-Core Version:    0.6.2
 */