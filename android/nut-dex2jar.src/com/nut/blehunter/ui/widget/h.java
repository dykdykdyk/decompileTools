package com.nut.blehunter.ui.widget;

import android.view.View;
import android.view.View.OnClickListener;

final class h
  implements View.OnClickListener
{
  private h(SlidingDrawer paramSlidingDrawer)
  {
  }

  public final void onClick(View paramView)
  {
    if (SlidingDrawer.a(this.a))
      return;
    if (SlidingDrawer.b(this.a))
    {
      paramView = this.a;
      if (!paramView.c)
      {
        paramView.a();
        if (paramView.b);
        for (i = paramView.a.getTop(); ; i = paramView.a.getLeft())
        {
          paramView.b(i);
          paramView.sendAccessibilityEvent(32);
          return;
        }
      }
      paramView.a();
      if (paramView.b);
      for (int i = paramView.a.getTop(); ; i = paramView.a.getLeft())
      {
        paramView.a(i);
        return;
      }
    }
    paramView = this.a;
    if (!paramView.c)
      paramView.c();
    while (true)
    {
      paramView.invalidate();
      paramView.requestLayout();
      return;
      paramView.b();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.h
 * JD-Core Version:    0.6.2
 */