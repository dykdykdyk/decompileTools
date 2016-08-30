package android.support.v7.a;

import android.support.v4.view.bl;
import android.support.v4.view.du;
import android.support.v7.view.c;
import android.support.v7.widget.ActionBarContainer;
import android.view.View;

final class be extends du
{
  be(bd parambd)
  {
  }

  public final void b(View paramView)
  {
    if ((bd.a(this.a)) && (bd.b(this.a) != null))
    {
      bl.b(bd.b(this.a), 0.0F);
      bl.b(bd.c(this.a), 0.0F);
    }
    bd.c(this.a).setVisibility(8);
    bd.c(this.a).setTransitioning(false);
    bd.d(this.a);
    paramView = this.a;
    if (paramView.c != null)
    {
      paramView.c.a(paramView.b);
      paramView.b = null;
      paramView.c = null;
    }
    if (bd.e(this.a) != null)
      bl.q(bd.e(this.a));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.be
 * JD-Core Version:    0.6.2
 */