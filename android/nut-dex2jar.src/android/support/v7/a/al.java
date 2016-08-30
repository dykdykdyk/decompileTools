package android.support.v7.a;

import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.support.v7.view.b;
import android.support.v7.view.c;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;

final class al
  implements c
{
  private c b;

  public al(ac paramac, c paramc)
  {
    this.b = paramc;
  }

  public final void a(b paramb)
  {
    this.b.a(paramb);
    if (this.a.s != null)
      this.a.c.getDecorView().removeCallbacks(this.a.t);
    if (this.a.r != null)
    {
      ac.e(this.a);
      this.a.u = bl.o(this.a.r).a(0.0F);
      this.a.u.a(new am(this));
    }
    this.a.q = null;
  }

  public final boolean a(b paramb, Menu paramMenu)
  {
    return this.b.a(paramb, paramMenu);
  }

  public final boolean a(b paramb, MenuItem paramMenuItem)
  {
    return this.b.a(paramb, paramMenuItem);
  }

  public final boolean b(b paramb, Menu paramMenu)
  {
    return this.b.b(paramb, paramMenu);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.al
 * JD-Core Version:    0.6.2
 */