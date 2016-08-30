package android.support.v4.view;

import android.graphics.Rect;
import android.view.View;

final class cl
  implements bd
{
  private final Rect b = new Rect();

  cl(ViewPager paramViewPager)
  {
  }

  public final dw a(View paramView, dw paramdw)
  {
    paramView = bl.a(paramView, paramdw);
    if (paramView.e())
      return paramView;
    paramdw = this.b;
    paramdw.left = paramView.a();
    paramdw.top = paramView.b();
    paramdw.right = paramView.c();
    paramdw.bottom = paramView.d();
    int i = 0;
    int j = this.a.getChildCount();
    while (i < j)
    {
      dw localdw = bl.b(this.a.getChildAt(i), paramView);
      paramdw.left = Math.min(localdw.a(), paramdw.left);
      paramdw.top = Math.min(localdw.b(), paramdw.top);
      paramdw.right = Math.min(localdw.c(), paramdw.right);
      paramdw.bottom = Math.min(localdw.d(), paramdw.bottom);
      i += 1;
    }
    return paramView.a(paramdw.left, paramdw.top, paramdw.right, paramdw.bottom);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.cl
 * JD-Core Version:    0.6.2
 */