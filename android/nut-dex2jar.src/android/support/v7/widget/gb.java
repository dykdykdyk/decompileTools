package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.support.v7.b.b;
import android.support.v7.b.f;
import android.support.v7.b.g;
import android.support.v7.b.l;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.y;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;
import android.widget.TextView;

public final class gb
  implements bu
{
  Toolbar a;
  CharSequence b;
  Window.Callback c;
  boolean d;
  private int e;
  private View f;
  private View g;
  private Drawable h;
  private Drawable i;
  private Drawable j;
  private boolean k;
  private CharSequence l;
  private CharSequence m;
  private k n;
  private int o = 0;
  private final ao p;
  private int q = 0;
  private Drawable r;

  public gb(Toolbar paramToolbar, boolean paramBoolean)
  {
    this(paramToolbar, paramBoolean, android.support.v7.b.j.abc_action_bar_up_description, f.abc_ic_ab_back_mtrl_am_alpha);
  }

  private gb(Toolbar paramToolbar, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this.a = paramToolbar;
    this.b = paramToolbar.getTitle();
    this.l = paramToolbar.getSubtitle();
    boolean bool;
    int i1;
    if (this.b != null)
    {
      bool = true;
      this.k = bool;
      this.j = paramToolbar.getNavigationIcon();
      if (!paramBoolean)
        break label651;
      paramToolbar = ft.a(paramToolbar.getContext(), null, l.ActionBar, b.actionBarStyle);
      Object localObject = paramToolbar.c(l.ActionBar_title);
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        this.k = true;
        b((CharSequence)localObject);
      }
      localObject = paramToolbar.c(l.ActionBar_subtitle);
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        this.l = ((CharSequence)localObject);
        if ((this.e & 0x8) != 0)
          this.a.setSubtitle((CharSequence)localObject);
      }
      localObject = paramToolbar.a(l.ActionBar_logo);
      if (localObject != null)
        b((Drawable)localObject);
      localObject = paramToolbar.a(l.ActionBar_icon);
      if ((this.j == null) && (localObject != null))
        a((Drawable)localObject);
      localObject = paramToolbar.a(l.ActionBar_homeAsUpIndicator);
      if (localObject != null)
      {
        this.j = ((Drawable)localObject);
        v();
      }
      c(paramToolbar.a(l.ActionBar_displayOptions, 0));
      i1 = paramToolbar.e(l.ActionBar_customNavigationLayout, 0);
      if (i1 != 0)
      {
        a(LayoutInflater.from(this.a.getContext()).inflate(i1, this.a, false));
        c(this.e | 0x10);
      }
      i1 = paramToolbar.d(l.ActionBar_height, 0);
      if (i1 > 0)
      {
        localObject = this.a.getLayoutParams();
        ((ViewGroup.LayoutParams)localObject).height = i1;
        this.a.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      int i2 = paramToolbar.b(l.ActionBar_contentInsetStart, -1);
      i1 = paramToolbar.b(l.ActionBar_contentInsetEnd, -1);
      if ((i2 >= 0) || (i1 >= 0))
      {
        localObject = this.a;
        i2 = Math.max(i2, 0);
        i1 = Math.max(i1, 0);
        ((Toolbar)localObject).i.a(i2, i1);
      }
      i1 = paramToolbar.e(l.ActionBar_titleTextStyle, 0);
      Context localContext;
      if (i1 != 0)
      {
        localObject = this.a;
        localContext = this.a.getContext();
        ((Toolbar)localObject).g = i1;
        if (((Toolbar)localObject).b != null)
          ((Toolbar)localObject).b.setTextAppearance(localContext, i1);
      }
      i1 = paramToolbar.e(l.ActionBar_subtitleTextStyle, 0);
      if (i1 != 0)
      {
        localObject = this.a;
        localContext = this.a.getContext();
        ((Toolbar)localObject).h = i1;
        if (((Toolbar)localObject).c != null)
          ((Toolbar)localObject).c.setTextAppearance(localContext, i1);
      }
      i1 = paramToolbar.e(l.ActionBar_popupTheme, 0);
      if (i1 != 0)
        this.a.setPopupTheme(i1);
      paramToolbar.a.recycle();
      label530: this.p = ao.a();
      if (paramInt1 != this.q)
      {
        this.q = paramInt1;
        if (TextUtils.isEmpty(this.a.getNavigationContentDescription()))
        {
          paramInt1 = this.q;
          if (paramInt1 != 0)
            break label678;
        }
      }
    }
    label651: label678: for (paramToolbar = null; ; paramToolbar = this.a.getContext().getString(paramInt1))
    {
      this.m = paramToolbar;
      u();
      this.m = this.a.getNavigationContentDescription();
      paramToolbar = this.p.a(this.a.getContext(), paramInt2, false);
      if (this.r != paramToolbar)
      {
        this.r = paramToolbar;
        v();
      }
      this.a.setNavigationOnClickListener(new gc(this));
      return;
      bool = false;
      break;
      i1 = 11;
      if (this.a.getNavigationIcon() != null)
        i1 = 15;
      this.e = i1;
      break label530;
    }
  }

  private void b(Drawable paramDrawable)
  {
    this.i = paramDrawable;
    t();
  }

  private void b(CharSequence paramCharSequence)
  {
    this.b = paramCharSequence;
    if ((this.e & 0x8) != 0)
      this.a.setTitle(paramCharSequence);
  }

  private void t()
  {
    Drawable localDrawable = null;
    if ((this.e & 0x2) != 0)
    {
      if ((this.e & 0x1) == 0)
        break label49;
      if (this.i == null)
        break label41;
      localDrawable = this.i;
    }
    while (true)
    {
      this.a.setLogo(localDrawable);
      return;
      label41: localDrawable = this.h;
      continue;
      label49: localDrawable = this.h;
    }
  }

  private void u()
  {
    if ((this.e & 0x4) != 0)
    {
      if (TextUtils.isEmpty(this.m))
        this.a.setNavigationContentDescription(this.q);
    }
    else
      return;
    this.a.setNavigationContentDescription(this.m);
  }

  private void v()
  {
    Toolbar localToolbar;
    if ((this.e & 0x4) != 0)
    {
      localToolbar = this.a;
      if (this.j == null)
        break label32;
    }
    label32: for (Drawable localDrawable = this.j; ; localDrawable = this.r)
    {
      localToolbar.setNavigationIcon(localDrawable);
      return;
    }
  }

  public final dd a(int paramInt, long paramLong)
  {
    dd localdd = bl.o(this.a);
    if (paramInt == 0);
    for (float f1 = 1.0F; ; f1 = 0.0F)
      return localdd.a(f1).a(paramLong).a(new gd(this, paramInt));
  }

  public final ViewGroup a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    if (paramInt != 0);
    for (Drawable localDrawable = this.p.a(this.a.getContext(), paramInt, false); ; localDrawable = null)
    {
      a(localDrawable);
      return;
    }
  }

  public final void a(Drawable paramDrawable)
  {
    this.h = paramDrawable;
    t();
  }

  public final void a(y paramy, android.support.v7.view.menu.j paramj)
  {
    Toolbar localToolbar = this.a;
    localToolbar.m = paramy;
    localToolbar.n = paramj;
    if (localToolbar.a != null)
      localToolbar.a.a(paramy, paramj);
  }

  public final void a(ex paramex)
  {
    if ((this.f != null) && (this.f.getParent() == this.a))
      this.a.removeView(this.f);
    this.f = paramex;
    if ((paramex != null) && (this.o == 2))
    {
      this.a.addView(this.f, 0);
      fy localfy = (fy)this.f.getLayoutParams();
      localfy.width = -2;
      localfy.height = -2;
      localfy.a = 8388691;
      paramex.setAllowCollapse(true);
    }
  }

  public final void a(Menu paramMenu, y paramy)
  {
    if (this.n == null)
    {
      this.n = new k(this.a.getContext());
      this.n.h = g.action_menu_presenter;
    }
    this.n.f = paramy;
    paramy = this.a;
    paramMenu = (i)paramMenu;
    k localk = this.n;
    if ((paramMenu != null) || (paramy.a != null))
    {
      paramy.d();
      i locali = paramy.a.a;
      if (locali != paramMenu)
      {
        if (locali != null)
        {
          locali.b(paramy.k);
          locali.b(paramy.l);
        }
        if (paramy.l == null)
          paramy.l = new fx(paramy, (byte)0);
        localk.n = true;
        if (paramMenu == null)
          break label186;
        paramMenu.a(localk, paramy.e);
        paramMenu.a(paramy.l, paramy.e);
      }
    }
    while (true)
    {
      paramy.a.setPopupTheme(paramy.f);
      paramy.a.setPresenter(localk);
      paramy.k = localk;
      return;
      label186: localk.a(paramy.e, null);
      paramy.l.a(paramy.e, null);
      localk.b(true);
      paramy.l.b(true);
    }
  }

  public final void a(View paramView)
  {
    if ((this.g != null) && ((this.e & 0x10) != 0))
      this.a.removeView(this.g);
    this.g = paramView;
    if ((paramView != null) && ((this.e & 0x10) != 0))
      this.a.addView(this.g);
  }

  public final void a(Window.Callback paramCallback)
  {
    this.c = paramCallback;
  }

  public final void a(CharSequence paramCharSequence)
  {
    if (!this.k)
      b(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    this.a.setCollapsible(paramBoolean);
  }

  public final Context b()
  {
    return this.a.getContext();
  }

  public final void b(int paramInt)
  {
    if (paramInt != 0);
    for (Drawable localDrawable = this.p.a(this.a.getContext(), paramInt, false); ; localDrawable = null)
    {
      b(localDrawable);
      return;
    }
  }

  public final void c(int paramInt)
  {
    int i1 = this.e ^ paramInt;
    this.e = paramInt;
    if (i1 != 0)
    {
      if ((i1 & 0x4) != 0)
      {
        if ((paramInt & 0x4) == 0)
          break label115;
        v();
        u();
      }
      if ((i1 & 0x3) != 0)
        t();
      if ((i1 & 0x8) != 0)
      {
        if ((paramInt & 0x8) == 0)
          break label126;
        this.a.setTitle(this.b);
        this.a.setSubtitle(this.l);
      }
    }
    while (true)
    {
      if (((i1 & 0x10) != 0) && (this.g != null))
      {
        if ((paramInt & 0x10) == 0)
          break label145;
        this.a.addView(this.g);
      }
      return;
      label115: this.a.setNavigationIcon(null);
      break;
      label126: this.a.setTitle(null);
      this.a.setSubtitle(null);
    }
    label145: this.a.removeView(this.g);
  }

  public final boolean c()
  {
    Toolbar localToolbar = this.a;
    return (localToolbar.l != null) && (localToolbar.l.b != null);
  }

  public final void d()
  {
    this.a.c();
  }

  public final CharSequence e()
  {
    return this.a.getTitle();
  }

  public final void f()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }

  public final void g()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }

  public final boolean h()
  {
    Toolbar localToolbar = this.a;
    return (localToolbar.getVisibility() == 0) && (localToolbar.a != null) && (localToolbar.a.b);
  }

  public final boolean i()
  {
    return this.a.a();
  }

  public final boolean j()
  {
    Object localObject = this.a;
    if (((Toolbar)localObject).a != null)
    {
      localObject = ((Toolbar)localObject).a;
      if (((ActionMenuView)localObject).c != null)
      {
        localObject = ((ActionMenuView)localObject).c;
        if ((((k)localObject).q != null) || (((k)localObject).g()))
        {
          i1 = 1;
          if (i1 == 0)
            break label62;
        }
      }
      label62: for (int i1 = 1; ; i1 = 0)
      {
        if (i1 == 0)
          break label67;
        return true;
        i1 = 0;
        break;
      }
    }
    label67: return false;
  }

  public final boolean k()
  {
    return this.a.b();
  }

  public final boolean l()
  {
    Object localObject = this.a;
    if (((Toolbar)localObject).a != null)
    {
      localObject = ((Toolbar)localObject).a;
      if ((((ActionMenuView)localObject).c != null) && (((ActionMenuView)localObject).c.d()));
      for (int i1 = 1; i1 != 0; i1 = 0)
        return true;
    }
    return false;
  }

  public final void m()
  {
    this.d = true;
  }

  public final void n()
  {
    Toolbar localToolbar = this.a;
    if (localToolbar.a != null)
      localToolbar.a.b();
  }

  public final int o()
  {
    return this.e;
  }

  public final int p()
  {
    return this.o;
  }

  public final View q()
  {
    return this.g;
  }

  public final int r()
  {
    return this.a.getVisibility();
  }

  public final Menu s()
  {
    return this.a.getMenu();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.gb
 * JD-Core Version:    0.6.2
 */