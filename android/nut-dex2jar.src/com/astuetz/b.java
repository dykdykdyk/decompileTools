package com.astuetz;

import android.os.Build.VERSION;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout;

final class b
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  b(PagerSlidingTabStrip paramPagerSlidingTabStrip)
  {
  }

  public final void onGlobalLayout()
  {
    View localView = PagerSlidingTabStrip.b(this.a).getChildAt(0);
    if (Build.VERSION.SDK_INT < 16)
      this.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    while (true)
    {
      if (PagerSlidingTabStrip.d(this.a))
      {
        int i = localView.getWidth() / 2;
        PagerSlidingTabStrip.a(this.a, PagerSlidingTabStrip.b(this.a, this.a.getWidth() / 2 - i));
      }
      this.a.setPadding(PagerSlidingTabStrip.e(this.a), this.a.getPaddingTop(), PagerSlidingTabStrip.f(this.a), this.a.getPaddingBottom());
      if (PagerSlidingTabStrip.g(this.a) == 0)
        PagerSlidingTabStrip.c(this.a, this.a.getWidth() / 2 - PagerSlidingTabStrip.e(this.a));
      PagerSlidingTabStrip.d(this.a, PagerSlidingTabStrip.a(this.a).getCurrentItem());
      PagerSlidingTabStrip.a(this.a, 0.0F);
      PagerSlidingTabStrip.a(this.a, PagerSlidingTabStrip.h(this.a), 0);
      PagerSlidingTabStrip.e(this.a, PagerSlidingTabStrip.h(this.a));
      return;
      this.a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.astuetz.b
 * JD-Core Version:    0.6.2
 */