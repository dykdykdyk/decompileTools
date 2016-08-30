package android.support.v4.app;

import android.support.v4.f.a;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;

final class k
  implements ViewTreeObserver.OnPreDrawListener
{
  k(i parami, View paramView, Object paramObject, ArrayList paramArrayList, n paramn, boolean paramBoolean, Fragment paramFragment1, Fragment paramFragment2)
  {
  }

  public final boolean onPreDraw()
  {
    this.a.getViewTreeObserver().removeOnPreDrawListener(this);
    if (this.b != null)
    {
      ao.a(this.b, this.c);
      this.c.clear();
      a locala = i.a(this.h, this.d, this.e, this.f);
      ao.a(this.b, this.d.d, locala, this.c);
      i.a(this.h, locala, this.d);
      i.a(this.f, this.g, this.e, locala);
    }
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.k
 * JD-Core Version:    0.6.2
 */