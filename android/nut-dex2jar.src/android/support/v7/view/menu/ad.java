package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public final class ad extends i
  implements SubMenu
{
  public i l;
  private m m;

  public ad(Context paramContext, i parami, m paramm)
  {
    super(paramContext);
    this.l = parami;
    this.m = paramm;
  }

  public final String a()
  {
    if (this.m != null);
    for (int i = this.m.getItemId(); i == 0; i = 0)
      return null;
    return super.a() + ":" + i;
  }

  public final void a(j paramj)
  {
    this.l.a(paramj);
  }

  final boolean a(i parami, MenuItem paramMenuItem)
  {
    return (super.a(parami, paramMenuItem)) || (this.l.a(parami, paramMenuItem));
  }

  public final boolean a(m paramm)
  {
    return this.l.a(paramm);
  }

  public final boolean b()
  {
    return this.l.b();
  }

  public final boolean b(m paramm)
  {
    return this.l.b(paramm);
  }

  public final boolean c()
  {
    return this.l.c();
  }

  public final MenuItem getItem()
  {
    return this.m;
  }

  public final i k()
  {
    return this.l;
  }

  public final SubMenu setHeaderIcon(int paramInt)
  {
    super.a(a.a(this.a, paramInt));
    return this;
  }

  public final SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    super.a(paramDrawable);
    return this;
  }

  public final SubMenu setHeaderTitle(int paramInt)
  {
    super.a(this.a.getResources().getString(paramInt));
    return this;
  }

  public final SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    super.a(paramCharSequence);
    return this;
  }

  public final SubMenu setHeaderView(View paramView)
  {
    super.a(null, null, paramView);
    return this;
  }

  public final SubMenu setIcon(int paramInt)
  {
    this.m.setIcon(paramInt);
    return this;
  }

  public final SubMenu setIcon(Drawable paramDrawable)
  {
    this.m.setIcon(paramDrawable);
    return this;
  }

  public final void setQwertyMode(boolean paramBoolean)
  {
    this.l.setQwertyMode(paramBoolean);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.ad
 * JD-Core Version:    0.6.2
 */