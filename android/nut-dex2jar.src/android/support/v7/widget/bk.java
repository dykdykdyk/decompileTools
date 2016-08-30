package android.support.v7.widget;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class bk
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  bk(bi parambi)
  {
  }

  public final void onGlobalLayout()
  {
    if (!bi.a(this.a, this.a.b))
    {
      this.a.d();
      return;
    }
    this.a.a();
    bi.b(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.bk
 * JD-Core Version:    0.6.2
 */