package android.support.v7.view;

import android.content.Context;
import android.support.v7.view.menu.j;
import android.support.v7.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

public final class f extends b
  implements j
{
  private Context a;
  private ActionBarContextView d;
  private c e;
  private WeakReference<View> f;
  private boolean g;
  private boolean h;
  private android.support.v7.view.menu.i i;

  public f(Context paramContext, ActionBarContextView paramActionBarContextView, c paramc, boolean paramBoolean)
  {
    this.a = paramContext;
    this.d = paramActionBarContextView;
    this.e = paramc;
    paramContext = new android.support.v7.view.menu.i(paramActionBarContextView.getContext());
    paramContext.e = 1;
    this.i = paramContext;
    this.i.a(this);
    this.h = paramBoolean;
  }

  public final MenuInflater a()
  {
    return new i(this.d.getContext());
  }

  public final void a(int paramInt)
  {
    b(this.a.getString(paramInt));
  }

  public final void a(android.support.v7.view.menu.i parami)
  {
    d();
    this.d.a();
  }

  public final void a(View paramView)
  {
    this.d.setCustomView(paramView);
    if (paramView != null);
    for (paramView = new WeakReference(paramView); ; paramView = null)
    {
      this.f = paramView;
      return;
    }
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.d.setSubtitle(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    this.d.setTitleOptional(paramBoolean);
  }

  public final boolean a(android.support.v7.view.menu.i parami, MenuItem paramMenuItem)
  {
    return this.e.a(this, paramMenuItem);
  }

  public final Menu b()
  {
    return this.i;
  }

  public final void b(int paramInt)
  {
    a(this.a.getString(paramInt));
  }

  public final void b(CharSequence paramCharSequence)
  {
    this.d.setTitle(paramCharSequence);
  }

  public final void c()
  {
    if (this.g)
      return;
    this.g = true;
    this.d.sendAccessibilityEvent(32);
    this.e.a(this);
  }

  public final void d()
  {
    this.e.b(this, this.i);
  }

  public final CharSequence f()
  {
    return this.d.getTitle();
  }

  public final CharSequence g()
  {
    return this.d.getSubtitle();
  }

  public final boolean h()
  {
    return this.d.h;
  }

  public final View i()
  {
    if (this.f != null)
      return (View)this.f.get();
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.f
 * JD-Core Version:    0.6.2
 */