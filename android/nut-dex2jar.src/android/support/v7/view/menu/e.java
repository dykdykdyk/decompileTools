package android.support.v7.view.menu;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.d.a.b;
import android.support.v4.d.a.c;
import android.support.v4.f.a;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Map;

abstract class e<T> extends f<T>
{
  final Context a;
  Map<b, MenuItem> b;
  Map<c, SubMenu> c;

  e(Context paramContext, T paramT)
  {
    super(paramT);
    this.a = paramContext;
  }

  final MenuItem a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b))
    {
      b localb = (b)paramMenuItem;
      if (this.b == null)
        this.b = new a();
      MenuItem localMenuItem = (MenuItem)this.b.get(paramMenuItem);
      paramMenuItem = localMenuItem;
      if (localMenuItem == null)
      {
        paramMenuItem = ab.a(this.a, localb);
        this.b.put(localb, paramMenuItem);
      }
      return paramMenuItem;
    }
    return paramMenuItem;
  }

  final SubMenu a(SubMenu paramSubMenu)
  {
    if ((paramSubMenu instanceof c))
    {
      c localc = (c)paramSubMenu;
      if (this.c == null)
        this.c = new a();
      SubMenu localSubMenu = (SubMenu)this.c.get(localc);
      paramSubMenu = localSubMenu;
      if (localSubMenu == null)
      {
        paramSubMenu = this.a;
        if (Build.VERSION.SDK_INT >= 14)
        {
          paramSubMenu = new ae(paramSubMenu, localc);
          this.c.put(localc, paramSubMenu);
        }
      }
      else
      {
        return paramSubMenu;
      }
      throw new UnsupportedOperationException();
    }
    return paramSubMenu;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.e
 * JD-Core Version:    0.6.2
 */