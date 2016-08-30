package rx.c.d.b;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

public final class y
{
  public static final Unsafe a;

  static
  {
    try
    {
      Object localObject1 = Unsafe.class.getDeclaredField("theUnsafe");
      ((Field)localObject1).setAccessible(true);
      localObject1 = (Unsafe)((Field)localObject1).get(null);
      a = (Unsafe)localObject1;
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        Object localObject2 = null;
    }
  }

  public static long a(Class<?> paramClass, String paramString)
  {
    try
    {
      paramClass = paramClass.getDeclaredField(paramString);
      long l = a.objectFieldOffset(paramClass);
      return l;
    }
    catch (NoSuchFieldException paramClass)
    {
      paramString = new InternalError();
      paramString.initCause(paramClass);
    }
    throw paramString;
  }

  public static boolean a()
  {
    return a != null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.b.y
 * JD-Core Version:    0.6.2
 */