package android.support.v7.view.menu;

import android.content.Context;
import android.view.ActionProvider;
import android.view.ActionProvider.VisibilityListener;
import android.view.MenuItem;
import android.view.View;

final class u extends p
  implements ActionProvider.VisibilityListener
{
  android.support.v4.view.p e;

  public u(t paramt, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramt, paramContext, paramActionProvider);
  }

  public final View a(MenuItem paramMenuItem)
  {
    return this.c.onCreateActionView(paramMenuItem);
  }

  public final void a(android.support.v4.view.p paramp)
  {
    this.e = paramp;
    this.c.setVisibilityListener(this);
  }

  public final boolean b()
  {
    return this.c.overridesItemVisibility();
  }

  public final boolean c()
  {
    return this.c.isVisible();
  }

  public final void onActionProviderVisibilityChanged(boolean paramBoolean)
  {
    if (this.e != null)
      this.e.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.menu.u
 * JD-Core Version:    0.6.2
 */