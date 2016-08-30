package rx.c.d;

import java.lang.reflect.Field;
import java.security.AccessController;

public final class c
{
  private static final int a;
  private static final boolean b;

  static
  {
    int i = c();
    a = i;
    if (i != 0);
    for (boolean bool = true; ; bool = false)
    {
      b = bool;
      return;
    }
  }

  public static boolean a()
  {
    return b;
  }

  public static int b()
  {
    return a;
  }

  private static int c()
  {
    try
    {
      if (System.getSecurityManager() == null);
      for (ClassLoader localClassLoader = ClassLoader.getSystemClassLoader(); ; localClassLoader = (ClassLoader)AccessController.doPrivileged(new d()))
        return ((Integer)Class.forName("android.os.Build$VERSION", true, localClassLoader).getField("SDK_INT").get(null)).intValue();
    }
    catch (Exception localException)
    {
    }
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.c
 * JD-Core Version:    0.6.2
 */