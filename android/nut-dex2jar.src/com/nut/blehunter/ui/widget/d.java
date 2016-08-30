package com.nut.blehunter.ui.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class d
  implements View.OnTouchListener
{
  d(c paramc)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = c.a(this.a).findViewById(2131558894).getTop();
    int j = (int)paramMotionEvent.getY();
    if ((paramMotionEvent.getAction() == 1) && (j < i))
      this.a.dismiss();
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.widget.d
 * JD-Core Version:    0.6.2
 */