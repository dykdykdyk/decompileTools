package android.support.v7.view;

import android.content.Context;
import android.support.v4.d.a.b;
import android.support.v4.view.an;
import android.support.v4.view.n;
import android.support.v7.view.menu.m;
import android.support.v7.view.menu.o;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

final class k
{
  Menu a;
  int b;
  int c;
  int d;
  int e;
  boolean f;
  boolean g;
  boolean h;
  int i;
  int j;
  CharSequence k;
  CharSequence l;
  int m;
  char n;
  char o;
  int p;
  boolean q;
  boolean r;
  boolean s;
  int t;
  int u;
  String v;
  String w;
  String x;
  n y;

  public k(i parami, Menu paramMenu)
  {
    this.a = paramMenu;
    a();
  }

  static char a(String paramString)
  {
    if (paramString == null)
      return '\000';
    return paramString.charAt(0);
  }

  final <T> T a(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramArrayOfClass = i.a(this.z).getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass);
      paramArrayOfClass.setAccessible(true);
      paramArrayOfClass = paramArrayOfClass.newInstance(paramArrayOfObject);
      return paramArrayOfClass;
    }
    catch (Exception paramArrayOfClass)
    {
      Log.w("SupportMenuInflater", "Cannot instantiate class: " + paramString, paramArrayOfClass);
    }
    return null;
  }

  public final void a()
  {
    this.b = 0;
    this.c = 0;
    this.d = 0;
    this.e = 0;
    this.f = true;
    this.g = true;
  }

  final void a(MenuItem paramMenuItem)
  {
    int i1 = 1;
    Object localObject = paramMenuItem.setChecked(this.q).setVisible(this.r).setEnabled(this.s);
    if (this.p > 0);
    for (boolean bool = true; ; bool = false)
    {
      ((MenuItem)localObject).setCheckable(bool).setTitleCondensed(this.l).setIcon(this.m).setAlphabeticShortcut(this.n).setNumericShortcut(this.o);
      if (this.t >= 0)
        an.a(paramMenuItem, this.t);
      if (this.x == null)
        break label161;
      if (!i.a(this.z).isRestricted())
        break;
      throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
    }
    paramMenuItem.setOnMenuItemClickListener(new j(i.b(this.z), this.x));
    label161: if (this.p >= 2)
    {
      if ((paramMenuItem instanceof m))
        ((m)paramMenuItem).a(true);
    }
    else
    {
      if (this.v == null)
        break label363;
      an.a(paramMenuItem, (View)a(this.v, i.a(), i.c(this.z)));
    }
    while (true)
    {
      if (this.u > 0)
      {
        if (i1 != 0)
          break label351;
        an.b(paramMenuItem, this.u);
      }
      while (true)
      {
        while (true)
        {
          if (this.y != null)
            an.a(paramMenuItem, this.y);
          return;
          if (!(paramMenuItem instanceof o))
            break;
          localObject = (o)paramMenuItem;
          try
          {
            if (((o)localObject).e == null)
              ((o)localObject).e = ((b)((o)localObject).d).getClass().getDeclaredMethod("setExclusiveCheckable", new Class[] { Boolean.TYPE });
            ((o)localObject).e.invoke(((o)localObject).d, new Object[] { Boolean.valueOf(true) });
          }
          catch (Exception localException)
          {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", localException);
          }
        }
        break;
        label351: Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
      }
      label363: i1 = 0;
    }
  }

  public final SubMenu b()
  {
    this.h = true;
    SubMenu localSubMenu = this.a.addSubMenu(this.b, this.i, this.j, this.k);
    a(localSubMenu.getItem());
    return localSubMenu;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.k
 * JD-Core Version:    0.6.2
 */