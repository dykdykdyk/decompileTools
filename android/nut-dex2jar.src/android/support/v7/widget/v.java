package android.support.v7.widget;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.j;
import android.view.MenuItem;

final class v
  implements j
{
  private v(ActionMenuView paramActionMenuView)
  {
  }

  public final void a(i parami)
  {
    if (ActionMenuView.b(this.a) != null)
      ActionMenuView.b(this.a).a(parami);
  }

  public final boolean a(i parami, MenuItem paramMenuItem)
  {
    return (ActionMenuView.a(this.a) != null) && (ActionMenuView.a(this.a).a(paramMenuItem));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.v
 * JD-Core Version:    0.6.2
 */