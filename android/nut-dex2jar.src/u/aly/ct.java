package u.aly;

import android.util.Log;
import java.util.Formatter;

public final class ct
{
  public static boolean a = false;
  private static String b = "MobclickAgent";

  public static void a(String paramString)
  {
    String str = b;
    if (a)
    {
      if (paramString == null);
      try
      {
        Log.w(str, "the msg is null!");
        return;
        Log.d(str, paramString);
        return;
      }
      catch (Throwable paramString)
      {
      }
    }
  }

  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((!a) || ((paramThrowable != null) || (paramString2 == null)));
    try
    {
      Log.w(paramString1, "the msg is null!");
      return;
      Log.i(paramString1, paramString2);
      return;
      if (paramString2 != null)
        Log.i(paramString1, paramThrowable.toString() + ":  [" + paramString2 + "]");
      while (true)
      {
        paramString2 = paramThrowable.getStackTrace();
        int j = paramString2.length;
        int i = 0;
        while (i < j)
        {
          paramThrowable = paramString2[i];
          Log.i(paramString1, "        at  " + paramThrowable.toString());
          i += 1;
        }
        Log.i(paramString1, paramThrowable.toString());
      }
      return;
    }
    catch (Throwable paramString1)
    {
    }
  }

  public static void a(String paramString, Throwable paramThrowable)
  {
    a(b, paramString, paramThrowable);
  }

  public static void a(String paramString, Object[] paramArrayOfObject)
  {
    try
    {
      if (paramString.contains("%"))
      {
        paramString = new Formatter().format(paramString, paramArrayOfObject).toString();
        a(b, paramString, null);
        return;
      }
      a(paramString, (String)paramArrayOfObject[0], null);
      return;
    }
    catch (Throwable paramString)
    {
      a(paramString);
    }
  }

  public static void a(Throwable paramThrowable)
  {
    c(b, null, paramThrowable);
  }

  public static void b(String paramString)
  {
    a(b, paramString, null);
  }

  public static void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((!a) || ((paramThrowable != null) || (paramString2 == null)));
    try
    {
      Log.w(paramString1, "the msg is null!");
      return;
      Log.w(paramString1, paramString2);
      return;
      if (paramString2 != null)
        Log.w(paramString1, paramThrowable.toString() + ":  [" + paramString2 + "]");
      while (true)
      {
        paramString2 = paramThrowable.getStackTrace();
        int j = paramString2.length;
        int i = 0;
        while (i < j)
        {
          paramThrowable = paramString2[i];
          Log.w(paramString1, "        at  " + paramThrowable.toString());
          i += 1;
        }
        Log.w(paramString1, paramThrowable.toString());
      }
      return;
    }
    catch (Throwable paramString1)
    {
    }
  }

  public static void b(String paramString, Throwable paramThrowable)
  {
    c(b, paramString, paramThrowable);
  }

  public static void b(String paramString, Object[] paramArrayOfObject)
  {
    try
    {
      if (paramString.contains("%"))
      {
        paramString = new Formatter().format(paramString, paramArrayOfObject).toString();
        c(b, paramString, null);
        return;
      }
      c(paramString, (String)paramArrayOfObject[0], null);
      return;
    }
    catch (Throwable paramString)
    {
      a(paramString);
    }
  }

  public static void c(String paramString)
  {
    b(b, paramString, null);
  }

  public static void c(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((!a) || ((paramThrowable != null) || (paramString2 == null)));
    try
    {
      Log.w(paramString1, "the msg is null!");
      return;
      Log.e(paramString1, paramString2);
      return;
      if (paramString2 != null)
        Log.e(paramString1, paramThrowable.toString() + ":  [" + paramString2 + "]");
      while (true)
      {
        paramString2 = paramThrowable.getStackTrace();
        int j = paramString2.length;
        int i = 0;
        while (i < j)
        {
          paramThrowable = paramString2[i];
          Log.e(paramString1, "        at  " + paramThrowable.toString());
          i += 1;
        }
        Log.e(paramString1, paramThrowable.toString());
      }
      return;
    }
    catch (Throwable paramString1)
    {
    }
  }

  public static void c(String paramString, Object[] paramArrayOfObject)
  {
    try
    {
      if (paramString.contains("%"))
      {
        paramString = new Formatter().format(paramString, paramArrayOfObject).toString();
        b(b, paramString, null);
        return;
      }
      b(paramString, (String)paramArrayOfObject[0], null);
      return;
    }
    catch (Throwable paramString)
    {
      a(paramString);
    }
  }

  public static void d(String paramString)
  {
    c(b, paramString, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ct
 * JD-Core Version:    0.6.2
 */