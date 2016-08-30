package android.support.v7.a;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.view.b;
import android.support.v7.view.c;
import android.support.v7.view.menu.j;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.bu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

public final class bh extends b
  implements j
{
  private final Context d;
  private final android.support.v7.view.menu.i e;
  private c f;
  private WeakReference<View> g;

  public bh(bd parambd, Context paramContext, c paramc)
  {
    this.d = paramContext;
    this.f = paramc;
    parambd = new android.support.v7.view.menu.i(paramContext);
    parambd.e = 1;
    this.e = parambd;
    this.e.a(this);
  }

  public final MenuInflater a()
  {
    return new android.support.v7.view.i(this.d);
  }

  public final void a(int paramInt)
  {
    b(bd.j(this.a).getResources().getString(paramInt));
  }

  public final void a(android.support.v7.view.menu.i parami)
  {
    if (this.f == null)
      return;
    d();
    bd.h(this.a).a();
  }

  public final void a(View paramView)
  {
    bd.h(this.a).setCustomView(paramView);
    this.g = new WeakReference(paramView);
  }

  public final void a(CharSequence paramCharSequence)
  {
    bd.h(this.a).setSubtitle(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    bd.h(this.a).setTitleOptional(paramBoolean);
  }

  public final boolean a(android.support.v7.view.menu.i parami, MenuItem paramMenuItem)
  {
    if (this.f != null)
      return this.f.a(this, paramMenuItem);
    return false;
  }

  public final Menu b()
  {
    return this.e;
  }

  public final void b(int paramInt)
  {
    a(bd.j(this.a).getResources().getString(paramInt));
  }

  public final void b(CharSequence paramCharSequence)
  {
    bd.h(this.a).setTitle(paramCharSequence);
  }

  public final void c()
  {
    if (this.a.a != this)
      return;
    if (!bd.a(bd.f(this.a), bd.g(this.a)))
    {
      this.a.b = this;
      this.a.c = this.f;
    }
    while (true)
    {
      this.f = null;
      this.a.e(false);
      ActionBarContextView localActionBarContextView = bd.h(this.a);
      if (localActionBarContextView.g == null)
        localActionBarContextView.b();
      bd.i(this.a).a().sendAccessibilityEvent(32);
      bd.e(this.a).setHideOnContentScrollEnabled(this.a.d);
      this.a.a = null;
      return;
      this.f.a(this);
    }
  }

  public final void d()
  {
    if (this.a.a != this)
      return;
    this.e.d();
    try
    {
      this.f.b(this, this.e);
      return;
    }
    finally
    {
      this.e.e();
    }
  }

  public final boolean e()
  {
    this.e.d();
    try
    {
      boolean bool = this.f.a(this, this.e);
      return bool;
    }
    finally
    {
      this.e.e();
    }
  }

  public final CharSequence f()
  {
    return bd.h(this.a).getTitle();
  }

  public final CharSequence g()
  {
    return bd.h(this.a).getSubtitle();
  }

  public final boolean h()
  {
    return bd.h(this.a).h;
  }

  public final View i()
  {
    if (this.g != null)
      return (View)this.g.get();
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.bh
 * JD-Core Version:    0.6.2
 */