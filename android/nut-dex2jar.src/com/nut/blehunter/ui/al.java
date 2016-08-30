package com.nut.blehunter.ui;

import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ImageView;
import com.nut.blehunter.d.o;

final class al
  implements ViewTreeObserver.OnPreDrawListener
{
  al(GuidePagerActivity paramGuidePagerActivity)
  {
  }

  public final boolean onPreDraw()
  {
    GuidePagerActivity.a(this.a, GuidePagerActivity.a(this.a).getWidth() + o.a(this.a, 10.0F));
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.al
 * JD-Core Version:    0.6.2
 */