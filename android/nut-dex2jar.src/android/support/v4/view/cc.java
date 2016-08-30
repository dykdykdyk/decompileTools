package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public final class cc
{
  static final ch a = new cd();

  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new cg();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new cf();
      return;
    }
    if (Build.VERSION.SDK_INT >= 8)
    {
      a = new ce();
      return;
    }
  }

  public static int a(ViewConfiguration paramViewConfiguration)
  {
    return a.a(paramViewConfiguration);
  }

  public static boolean b(ViewConfiguration paramViewConfiguration)
  {
    return a.b(paramViewConfiguration);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.cc
 * JD-Core Version:    0.6.2
 */