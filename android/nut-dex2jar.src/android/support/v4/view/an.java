package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.v4.d.a.b;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

public final class an
{
  static final ar a = new ao();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      a = new aq();
      return;
    }
    if (i >= 11)
    {
      a = new ap();
      return;
    }
  }

  public static MenuItem a(MenuItem paramMenuItem, n paramn)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).a(paramn);
    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
    return paramMenuItem;
  }

  public static MenuItem a(MenuItem paramMenuItem, View paramView)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).setActionView(paramView);
    return a.a(paramMenuItem, paramView);
  }

  public static View a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).getActionView();
    return a.a(paramMenuItem);
  }

  public static void a(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).setShowAsAction(paramInt);
      return;
    }
    a.a(paramMenuItem, paramInt);
  }

  public static MenuItem b(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).setActionView(paramInt);
    return a.b(paramMenuItem, paramInt);
  }

  public static boolean b(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).expandActionView();
    return a.b(paramMenuItem);
  }

  public static boolean c(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).isActionViewExpanded();
    return a.c(paramMenuItem);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.an
 * JD-Core Version:    0.6.2
 */