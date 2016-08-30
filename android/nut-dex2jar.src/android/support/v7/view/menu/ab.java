package android.support.v7.view.menu;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.d.a.a;
import android.support.v4.d.a.b;
import android.view.Menu;
import android.view.MenuItem;

public final class ab
{
  public static Menu a(Context paramContext, a parama)
  {
    if (Build.VERSION.SDK_INT >= 14)
      return new ac(paramContext, parama);
    throw new UnsupportedOperationException();
  }

  public static MenuItem a(Context paramContext, b paramb)
  {
    if (Build.VERSION.SDK_INT >= 16)
      return new t(paramContext, paramb);
    if (Build.VERSION.SDK_INT >= 14)
      return new o(paramContext, paramb);
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.ab
 * JD-Core Version:    0.6.2
 */