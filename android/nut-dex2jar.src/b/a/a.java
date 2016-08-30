package b.a;

import android.util.SparseBooleanArray;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class a
{
  static final List<e> a = new CopyOnWriteArrayList();
  static final SparseBooleanArray b = new SparseBooleanArray();
  private static final e c = new b();

  public static void a(e parame)
  {
    if (parame == c)
      throw new IllegalArgumentException("Cannot plant Timber into itself.");
    if ((parame instanceof d))
      b.append(a.size(), true);
    a.add(parame);
  }

  public static void a(String paramString, Object[] paramArrayOfObject)
  {
    c.c(paramString, paramArrayOfObject);
  }

  public static void a(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    c.a(paramThrowable, paramString, paramArrayOfObject);
  }

  public static void b(String paramString, Object[] paramArrayOfObject)
  {
    c.a(paramString, paramArrayOfObject);
  }

  public static void b(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    c.b(paramThrowable, paramString, paramArrayOfObject);
  }

  public static void c(String paramString, Object[] paramArrayOfObject)
  {
    c.d(paramString, paramArrayOfObject);
  }

  public static void d(String paramString, Object[] paramArrayOfObject)
  {
    c.b(paramString, paramArrayOfObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     b.a.a
 * JD-Core Version:    0.6.2
 */