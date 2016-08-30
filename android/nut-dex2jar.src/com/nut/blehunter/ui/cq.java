package com.nut.blehunter.ui;

import com.nut.blehunter.ui.widget.CircleImageView;

final class cq
  implements Runnable
{
  cq(NutDetailActivity paramNutDetailActivity)
  {
  }

  public final void run()
  {
    NutDetailActivity.h(this.a).setHighlightBorderSweepAngle(360.0F);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cq
 * JD-Core Version:    0.6.2
 */