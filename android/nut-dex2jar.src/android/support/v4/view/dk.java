package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;

class dk extends di
{
  public final void a(View paramView, dv paramdv)
  {
    ds localds = null;
    if (paramdv != null)
      localds = new ds(paramdv, paramView);
    paramView.animate().setUpdateListener(localds);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.dk
 * JD-Core Version:    0.6.2
 */