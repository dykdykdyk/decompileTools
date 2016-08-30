package android.support.v4.view;

import android.view.View;
import java.lang.reflect.Field;

final class bz
{
  private static Field a;
  private static boolean b;
  private static Field c;
  private static boolean d;

  static int a(View paramView)
  {
    if (!b);
    try
    {
      Field localField = View.class.getDeclaredField("mMinWidth");
      a = localField;
      localField.setAccessible(true);
      label23: b = true;
      if (a != null)
        try
        {
          int i = ((Integer)a.get(paramView)).intValue();
          return i;
        }
        catch (Exception paramView)
        {
        }
      return 0;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      break label23;
    }
  }

  static int b(View paramView)
  {
    if (!d);
    try
    {
      Field localField = View.class.getDeclaredField("mMinHeight");
      c = localField;
      localField.setAccessible(true);
      label23: d = true;
      if (c != null)
        try
        {
          int i = ((Integer)c.get(paramView)).intValue();
          return i;
        }
        catch (Exception paramView)
        {
        }
      return 0;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      break label23;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bz
 * JD-Core Version:    0.6.2
 */