package android.support.v7.a;

import android.support.v4.view.bl;
import android.support.v4.view.dd;
import android.support.v4.view.du;
import android.support.v7.widget.ActionBarContextView;
import android.view.View;
import android.widget.PopupWindow;

final class am extends du
{
  am(al paramal)
  {
  }

  public final void b(View paramView)
  {
    this.a.a.r.setVisibility(8);
    if (this.a.a.s != null)
      this.a.a.s.dismiss();
    while (true)
    {
      this.a.a.r.removeAllViews();
      this.a.a.u.a(null);
      this.a.a.u = null;
      return;
      if ((this.a.a.r.getParent() instanceof View))
        bl.q((View)this.a.a.r.getParent());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.am
 * JD-Core Version:    0.6.2
 */