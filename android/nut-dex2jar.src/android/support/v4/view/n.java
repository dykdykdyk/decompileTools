package android.support.v4.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public abstract class n
{
  public o a;
  public p b;
  private final Context c;

  public n(Context paramContext)
  {
    this.c = paramContext;
  }

  public abstract View a();

  public View a(MenuItem paramMenuItem)
  {
    return a();
  }

  public void a(p paramp)
  {
    if (this.b != null)
      Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
    this.b = paramp;
  }

  public void a(SubMenu paramSubMenu)
  {
  }

  public final void a(boolean paramBoolean)
  {
    if (this.a != null)
      this.a.a(paramBoolean);
  }

  public boolean b()
  {
    return false;
  }

  public boolean c()
  {
    return true;
  }

  public boolean d()
  {
    return false;
  }

  public boolean e()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.n
 * JD-Core Version:    0.6.2
 */