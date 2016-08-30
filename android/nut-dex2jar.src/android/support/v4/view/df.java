package android.support.v4.view;

import android.view.View;
import java.lang.ref.WeakReference;

final class df
  implements Runnable
{
  WeakReference<View> a;
  dd b;

  private df(de paramde, dd paramdd, View paramView)
  {
    this.a = new WeakReference(paramView);
    this.b = paramdd;
  }

  public final void run()
  {
    View localView = (View)this.a.get();
    if (localView != null)
      this.c.c(this.b, localView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.df
 * JD-Core Version:    0.6.2
 */