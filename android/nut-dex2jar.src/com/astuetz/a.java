package com.astuetz;

import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

final class a
  implements View.OnClickListener
{
  a(PagerSlidingTabStrip paramPagerSlidingTabStrip, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    if (PagerSlidingTabStrip.a(this.b).getCurrentItem() != this.a)
    {
      paramView = PagerSlidingTabStrip.b(this.b).getChildAt(PagerSlidingTabStrip.a(this.b).getCurrentItem());
      PagerSlidingTabStrip.a(this.b, paramView);
      PagerSlidingTabStrip.a(this.b).setCurrentItem(this.a);
    }
    while (PagerSlidingTabStrip.c(this.b) == null)
      return;
    PagerSlidingTabStrip.c(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.astuetz.a
 * JD-Core Version:    0.6.2
 */