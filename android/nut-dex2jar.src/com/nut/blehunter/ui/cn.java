package com.nut.blehunter.ui;

import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.Toolbar;
import com.nut.blehunter.entity.e;

final class cn
  implements Runnable
{
  cn(NutDetailActivity paramNutDetailActivity)
  {
  }

  public final void run()
  {
    try
    {
      int i = Color.parseColor("#" + NutDetailActivity.a(this.a).c);
      this.a.l().getNavigationIcon().setColorFilter(i, PorterDuff.Mode.SRC_IN);
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      localNumberFormatException.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cn
 * JD-Core Version:    0.6.2
 */