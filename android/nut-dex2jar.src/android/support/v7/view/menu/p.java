package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.view.n;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

class p extends n
{
  final ActionProvider c;

  public p(o paramo, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramContext);
    this.c = paramActionProvider;
  }

  public final View a()
  {
    return this.c.onCreateActionView();
  }

  public final void a(SubMenu paramSubMenu)
  {
    this.c.onPrepareSubMenu(this.d.a(paramSubMenu));
  }

  public final boolean d()
  {
    return this.c.onPerformDefaultAction();
  }

  public final boolean e()
  {
    return this.c.hasSubMenu();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.p
 * JD-Core Version:    0.6.2
 */