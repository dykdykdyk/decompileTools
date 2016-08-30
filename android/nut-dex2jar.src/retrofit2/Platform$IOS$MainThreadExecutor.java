package retrofit2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;

class Platform$IOS$MainThreadExecutor
  implements Executor
{
  private static Method addOperation;
  private static Object queue;

  static
  {
    try
    {
      Class localClass = Class.forName("org.robovm.apple.foundation.NSOperationQueue");
      queue = localClass.getDeclaredMethod("getMainQueue", new Class[0]).invoke(null, new Object[0]);
      addOperation = localClass.getDeclaredMethod("addOperation", new Class[] { Runnable.class });
      return;
    }
    catch (Exception localException)
    {
      throw new AssertionError(localException);
    }
  }

  public void execute(Runnable paramRunnable)
  {
    try
    {
      addOperation.invoke(queue, new Object[] { paramRunnable });
      return;
    }
    catch (IllegalArgumentException paramRunnable)
    {
      throw new AssertionError(paramRunnable);
    }
    catch (InvocationTargetException paramRunnable)
    {
      paramRunnable = paramRunnable.getCause();
      if ((paramRunnable instanceof RuntimeException))
        throw ((RuntimeException)paramRunnable);
      if ((paramRunnable instanceof Error))
        throw ((Error)paramRunnable);
      throw new RuntimeException(paramRunnable);
    }
    catch (IllegalAccessException paramRunnable)
    {
      label20: break label20;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Platform.IOS.MainThreadExecutor
 * JD-Core Version:    0.6.2
 */