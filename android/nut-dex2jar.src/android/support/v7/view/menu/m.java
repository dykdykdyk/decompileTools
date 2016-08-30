package android.support.v7.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.d.a.b;
import android.support.v4.view.as;
import android.support.v7.widget.ao;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;
import java.util.ArrayList;

public final class m
  implements b
{
  static String f;
  static String g;
  static String h;
  static String i;
  final int a;
  i b;
  int c = 0;
  public android.support.v4.view.n d;
  ContextMenu.ContextMenuInfo e;
  private final int j;
  private final int k;
  private final int l;
  private CharSequence m;
  private CharSequence n;
  private Intent o;
  private char p;
  private char q;
  private Drawable r;
  private int s = 0;
  private ad t;
  private Runnable u;
  private MenuItem.OnMenuItemClickListener v;
  private int w = 16;
  private View x;
  private as y;
  private boolean z = false;

  m(i parami, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    this.b = parami;
    this.j = paramInt2;
    this.k = paramInt1;
    this.l = paramInt3;
    this.a = paramInt4;
    this.m = paramCharSequence;
    this.c = paramInt5;
  }

  private b a(View paramView)
  {
    this.x = paramView;
    this.d = null;
    if ((paramView != null) && (paramView.getId() == -1) && (this.j > 0))
      paramView.setId(this.j);
    this.b.g();
    return this;
  }

  private void e(boolean paramBoolean)
  {
    int i2 = this.w;
    int i3 = this.w;
    if (paramBoolean);
    for (int i1 = 2; ; i1 = 0)
    {
      this.w = (i1 | i3 & 0xFFFFFFFD);
      if (i2 != this.w)
        this.b.b(false);
      return;
    }
  }

  public final b a(as paramas)
  {
    this.y = paramas;
    return this;
  }

  public final b a(android.support.v4.view.n paramn)
  {
    if (this.d != null)
    {
      android.support.v4.view.n localn = this.d;
      localn.b = null;
      localn.a = null;
    }
    this.x = null;
    this.d = paramn;
    this.b.b(true);
    if (this.d != null)
      this.d.a(new n(this));
    return this;
  }

  public final android.support.v4.view.n a()
  {
    return this.d;
  }

  final CharSequence a(aa paramaa)
  {
    if ((paramaa != null) && (paramaa.a()))
      return getTitleCondensed();
    return getTitle();
  }

  public final void a(ad paramad)
  {
    this.t = paramad;
    paramad.setHeaderTitle(getTitle());
  }

  public final void a(boolean paramBoolean)
  {
    int i2 = this.w;
    if (paramBoolean);
    for (int i1 = 4; ; i1 = 0)
    {
      this.w = (i1 | i2 & 0xFFFFFFFB);
      return;
    }
  }

  public final boolean b()
  {
    if ((this.v != null) && (this.v.onMenuItemClick(this)));
    do
    {
      do
        return true;
      while (this.b.a(this.b.k(), this));
      if (this.u != null)
      {
        this.u.run();
        return true;
      }
      if (this.o != null)
        try
        {
          this.b.a.startActivity(this.o);
          return true;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", localActivityNotFoundException);
        }
    }
    while ((this.d != null) && (this.d.d()));
    return false;
  }

  final boolean b(boolean paramBoolean)
  {
    boolean bool = false;
    int i2 = this.w;
    int i3 = this.w;
    if (paramBoolean);
    for (int i1 = 0; ; i1 = 8)
    {
      this.w = (i1 | i3 & 0xFFFFFFF7);
      paramBoolean = bool;
      if (i2 != this.w)
        paramBoolean = true;
      return paramBoolean;
    }
  }

  final char c()
  {
    if (this.b.b())
      return this.q;
    return this.p;
  }

  public final void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.w |= 32;
      return;
    }
    this.w &= -33;
  }

  public final boolean collapseActionView()
  {
    if ((this.c & 0x8) == 0);
    do
    {
      return false;
      if (this.x == null)
        return true;
    }
    while ((this.y != null) && (!this.y.b(this)));
    return this.b.b(this);
  }

  public final void d(boolean paramBoolean)
  {
    this.z = paramBoolean;
    this.b.b(false);
  }

  final boolean d()
  {
    return (this.b.c()) && (c() != 0);
  }

  public final boolean e()
  {
    return (this.w & 0x4) != 0;
  }

  public final boolean expandActionView()
  {
    if (!i());
    while ((this.y != null) && (!this.y.a(this)))
      return false;
    return this.b.a(this);
  }

  public final boolean f()
  {
    return (this.w & 0x20) == 32;
  }

  public final boolean g()
  {
    return (this.c & 0x1) == 1;
  }

  public final ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
  }

  public final View getActionView()
  {
    if (this.x != null)
      return this.x;
    if (this.d != null)
    {
      this.x = this.d.a(this);
      return this.x;
    }
    return null;
  }

  public final char getAlphabeticShortcut()
  {
    return this.q;
  }

  public final int getGroupId()
  {
    return this.k;
  }

  public final Drawable getIcon()
  {
    if (this.r != null)
      return this.r;
    if (this.s != 0)
    {
      Drawable localDrawable = ao.a().a(this.b.a, this.s, false);
      this.s = 0;
      this.r = localDrawable;
      return localDrawable;
    }
    return null;
  }

  public final Intent getIntent()
  {
    return this.o;
  }

  @ViewDebug.CapturedViewProperty
  public final int getItemId()
  {
    return this.j;
  }

  public final ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return this.e;
  }

  public final char getNumericShortcut()
  {
    return this.p;
  }

  public final int getOrder()
  {
    return this.l;
  }

  public final SubMenu getSubMenu()
  {
    return this.t;
  }

  @ViewDebug.CapturedViewProperty
  public final CharSequence getTitle()
  {
    return this.m;
  }

  public final CharSequence getTitleCondensed()
  {
    if (this.n != null);
    for (CharSequence localCharSequence = this.n; ; localCharSequence = this.m)
    {
      Object localObject = localCharSequence;
      if (Build.VERSION.SDK_INT < 18)
      {
        localObject = localCharSequence;
        if (localCharSequence != null)
        {
          localObject = localCharSequence;
          if (!(localCharSequence instanceof String))
            localObject = localCharSequence.toString();
        }
      }
      return localObject;
    }
  }

  public final boolean h()
  {
    return (this.c & 0x2) == 2;
  }

  public final boolean hasSubMenu()
  {
    return this.t != null;
  }

  public final boolean i()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((this.c & 0x8) != 0)
    {
      if ((this.x == null) && (this.d != null))
        this.x = this.d.a(this);
      bool1 = bool2;
      if (this.x != null)
        bool1 = true;
    }
    return bool1;
  }

  public final boolean isActionViewExpanded()
  {
    return this.z;
  }

  public final boolean isCheckable()
  {
    return (this.w & 0x1) == 1;
  }

  public final boolean isChecked()
  {
    return (this.w & 0x2) == 2;
  }

  public final boolean isEnabled()
  {
    return (this.w & 0x10) != 0;
  }

  public final boolean isVisible()
  {
    if ((this.d != null) && (this.d.b()))
      if (((this.w & 0x8) != 0) || (!this.d.c()));
    while ((this.w & 0x8) == 0)
    {
      return true;
      return false;
    }
    return false;
  }

  public final MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
  }

  public final MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (this.q == paramChar)
      return this;
    this.q = Character.toLowerCase(paramChar);
    this.b.b(false);
    return this;
  }

  public final MenuItem setCheckable(boolean paramBoolean)
  {
    int i2 = this.w;
    int i3 = this.w;
    if (paramBoolean);
    for (int i1 = 1; ; i1 = 0)
    {
      this.w = (i1 | i3 & 0xFFFFFFFE);
      if (i2 != this.w)
        this.b.b(false);
      return this;
    }
  }

  public final MenuItem setChecked(boolean paramBoolean)
  {
    if ((this.w & 0x4) != 0)
    {
      i locali = this.b;
      int i2 = getGroupId();
      int i3 = locali.c.size();
      int i1 = 0;
      if (i1 < i3)
      {
        m localm = (m)locali.c.get(i1);
        if ((localm.getGroupId() == i2) && (localm.e()) && (localm.isCheckable()))
          if (localm != this)
            break label100;
        label100: for (paramBoolean = true; ; paramBoolean = false)
        {
          localm.e(paramBoolean);
          i1 += 1;
          break;
        }
      }
    }
    else
    {
      e(paramBoolean);
    }
    return this;
  }

  public final MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (this.w |= 16; ; this.w &= -17)
    {
      this.b.b(false);
      return this;
    }
  }

  public final MenuItem setIcon(int paramInt)
  {
    this.r = null;
    this.s = paramInt;
    this.b.b(false);
    return this;
  }

  public final MenuItem setIcon(Drawable paramDrawable)
  {
    this.s = 0;
    this.r = paramDrawable;
    this.b.b(false);
    return this;
  }

  public final MenuItem setIntent(Intent paramIntent)
  {
    this.o = paramIntent;
    return this;
  }

  public final MenuItem setNumericShortcut(char paramChar)
  {
    if (this.p == paramChar)
      return this;
    this.p = paramChar;
    this.b.b(false);
    return this;
  }

  public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setOnActionExpandListener()");
  }

  public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.v = paramOnMenuItemClickListener;
    return this;
  }

  public final MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    this.p = paramChar1;
    this.q = Character.toLowerCase(paramChar2);
    this.b.b(false);
    return this;
  }

  public final void setShowAsAction(int paramInt)
  {
    switch (paramInt & 0x3)
    {
    default:
      throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    case 0:
    case 1:
    case 2:
    }
    this.c = paramInt;
    this.b.g();
  }

  public final MenuItem setTitle(int paramInt)
  {
    return setTitle(this.b.a.getString(paramInt));
  }

  public final MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.m = paramCharSequence;
    this.b.b(false);
    if (this.t != null)
      this.t.setHeaderTitle(paramCharSequence);
    return this;
  }

  public final MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.n = paramCharSequence;
    this.b.b(false);
    return this;
  }

  public final MenuItem setVisible(boolean paramBoolean)
  {
    if (b(paramBoolean))
      this.b.f();
    return this;
  }

  public final String toString()
  {
    if (this.m != null)
      return this.m.toString();
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.m
 * JD-Core Version:    0.6.2
 */