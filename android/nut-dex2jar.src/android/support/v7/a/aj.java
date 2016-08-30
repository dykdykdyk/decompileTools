package android.support.v7.a;

import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.support.v4.view.du;
import android.support.v7.widget.ActionBarContextView;
import android.view.View;

final class aj extends du
{
  aj(ac paramac)
  {
  }

  public final void a(View paramView)
  {
    this.a.r.setVisibility(0);
    this.a.r.sendAccessibilityEvent(32);
    if (this.a.r.getParent() != null)
      bl.q((View)this.a.r.getParent());
  }

  public final void b(View paramView)
  {
    bl.c(this.a.r, 1.0F);
    this.a.u.a(null);
    this.a.u = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.aj
 * JD-Core Version:    0.6.2
 */