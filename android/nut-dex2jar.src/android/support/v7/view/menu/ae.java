package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.d.a.c;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

final class ae extends ac
  implements SubMenu
{
  ae(Context paramContext, c paramc)
  {
    super(paramContext, paramc);
  }

  public final void clearHeader()
  {
    ((c)this.d).clearHeader();
  }

  public final MenuItem getItem()
  {
    return a(((c)this.d).getItem());
  }

  public final SubMenu setHeaderIcon(int paramInt)
  {
    ((c)this.d).setHeaderIcon(paramInt);
    return this;
  }

  public final SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    ((c)this.d).setHeaderIcon(paramDrawable);
    return this;
  }

  public final SubMenu setHeaderTitle(int paramInt)
  {
    ((c)this.d).setHeaderTitle(paramInt);
    return this;
  }

  public final SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    ((c)this.d).setHeaderTitle(paramCharSequence);
    return this;
  }

  public final SubMenu setHeaderView(View paramView)
  {
    ((c)this.d).setHeaderView(paramView);
    return this;
  }

  public final SubMenu setIcon(int paramInt)
  {
    ((c)this.d).setIcon(paramInt);
    return this;
  }

  public final SubMenu setIcon(Drawable paramDrawable)
  {
    ((c)this.d).setIcon(paramDrawable);
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.ae
 * JD-Core Version:    0.6.2
 */