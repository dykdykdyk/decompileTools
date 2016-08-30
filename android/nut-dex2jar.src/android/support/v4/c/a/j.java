package android.support.v4.c.a;

import android.graphics.drawable.Drawable;
import android.util.Log;
import java.lang.reflect.Method;

final class j
{
  private static Method a;
  private static boolean b;

  public static int a(Drawable paramDrawable)
  {
    if (!b);
    try
    {
      Method localMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
      a = localMethod;
      localMethod.setAccessible(true);
      b = true;
      if (a == null);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      try
      {
        int i = ((Integer)a.invoke(paramDrawable, new Object[0])).intValue();
        return i;
        localNoSuchMethodException = localNoSuchMethodException;
        Log.i("DrawableCompatJellybeanMr1", "Failed to retrieve getLayoutDirection() method", localNoSuchMethodException);
      }
      catch (Exception paramDrawable)
      {
        Log.i("DrawableCompatJellybeanMr1", "Failed to invoke getLayoutDirection() via reflection", paramDrawable);
        a = null;
      }
    }
    return -1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.c.a.j
 * JD-Core Version:    0.6.2
 */