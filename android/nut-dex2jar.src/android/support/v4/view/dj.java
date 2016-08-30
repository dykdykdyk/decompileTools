package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;

class dj extends dg
{
  public final void a(dd paramdd, View paramView, dt paramdt)
  {
    if (paramdt != null)
    {
      paramView.animate().setListener(new dq(paramdt, paramView));
      return;
    }
    paramView.animate().setListener(null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.dj
 * JD-Core Version:    0.6.2
 */