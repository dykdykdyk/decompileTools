package com.astuetz;

import android.support.v4.view.ViewPager;
import android.support.v4.view.be;
import android.support.v4.view.cr;
import android.view.View;
import android.widget.LinearLayout;

final class e
  implements cr
{
  private e(PagerSlidingTabStrip paramPagerSlidingTabStrip)
  {
  }

  public final void a(int paramInt)
  {
    PagerSlidingTabStrip.e(this.a, paramInt);
    if (this.a.a != null)
      this.a.a.a(paramInt);
  }

  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    PagerSlidingTabStrip.d(this.a, paramInt1);
    PagerSlidingTabStrip.a(this.a, paramFloat);
    if (PagerSlidingTabStrip.i(this.a) > 0);
    for (int i = (int)(PagerSlidingTabStrip.b(this.a).getChildAt(paramInt1).getWidth() * paramFloat); ; i = 0)
    {
      PagerSlidingTabStrip.a(this.a, paramInt1, i);
      this.a.invalidate();
      if (this.a.a != null)
        this.a.a.a(paramInt1, paramFloat, paramInt2);
      return;
    }
  }

  public final void b(int paramInt)
  {
    if (paramInt == 0)
      PagerSlidingTabStrip.a(this.a, PagerSlidingTabStrip.a(this.a).getCurrentItem(), 0);
    View localView = PagerSlidingTabStrip.b(this.a).getChildAt(PagerSlidingTabStrip.a(this.a).getCurrentItem());
    PagerSlidingTabStrip.b(this.a, localView);
    if (PagerSlidingTabStrip.a(this.a).getCurrentItem() - 1 >= 0)
    {
      localView = PagerSlidingTabStrip.b(this.a).getChildAt(PagerSlidingTabStrip.a(this.a).getCurrentItem() - 1);
      PagerSlidingTabStrip.a(this.a, localView);
    }
    if (PagerSlidingTabStrip.a(this.a).getCurrentItem() + 1 <= PagerSlidingTabStrip.a(this.a).getAdapter().a() - 1)
    {
      localView = PagerSlidingTabStrip.b(this.a).getChildAt(PagerSlidingTabStrip.a(this.a).getCurrentItem() + 1);
      PagerSlidingTabStrip.a(this.a, localView);
    }
    if (this.a.a != null)
      this.a.a.b(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.astuetz.e
 * JD-Core Version:    0.6.2
 */