package com.nut.blehunter.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.widget.ImageView;

final class cp
  implements ValueAnimator.AnimatorUpdateListener
{
  cp(NutDetailActivity paramNutDetailActivity)
  {
  }

  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f = ((Float)paramValueAnimator.getAnimatedValue()).floatValue();
    NutDetailActivity.g(this.a).setTranslationX((float)(Math.sin(f * 3.141592653589793D * 36.0D / 180.0D) * 36.0D));
    NutDetailActivity.g(this.a).setTranslationY((float)(Math.cos(f * 3.141592653589793D * 36.0D / 180.0D) * 36.0D));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cp
 * JD-Core Version:    0.6.2
 */