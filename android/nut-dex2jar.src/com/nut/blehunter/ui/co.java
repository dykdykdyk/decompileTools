package com.nut.blehunter.ui;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

final class co
  implements Animation.AnimationListener
{
  co(NutDetailActivity paramNutDetailActivity)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (NutDetailActivity.d(this.a))
    {
      NutDetailActivity.f(this.a).startAnimation(NutDetailActivity.e(this.a));
      return;
    }
    NutDetailActivity.f(this.a).setVisibility(4);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.co
 * JD-Core Version:    0.6.2
 */