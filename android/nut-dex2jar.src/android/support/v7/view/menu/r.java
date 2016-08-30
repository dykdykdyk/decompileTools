package android.support.v7.view.menu;

import android.support.v4.view.as;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

final class r extends f<MenuItem.OnActionExpandListener>
  implements as
{
  r(o paramo, MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    super(paramOnActionExpandListener);
  }

  public final boolean a(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnActionExpandListener)this.d).onMenuItemActionExpand(this.a.a(paramMenuItem));
  }

  public final boolean b(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnActionExpandListener)this.d).onMenuItemActionCollapse(this.a.a(paramMenuItem));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.r
 * JD-Core Version:    0.6.2
 */