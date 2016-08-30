package android.support.v4.app;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class l
  implements ViewTreeObserver.OnPreDrawListener
{
  l(i parami, View paramView, n paramn, int paramInt, Object paramObject)
  {
  }

  public final boolean onPreDraw()
  {
    this.a.getViewTreeObserver().removeOnPreDrawListener(this);
    i.a(this.e, this.b, this.c, this.d);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.l
 * JD-Core Version:    0.6.2
 */