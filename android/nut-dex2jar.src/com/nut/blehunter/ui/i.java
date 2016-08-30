package com.nut.blehunter.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import com.nut.blehunter.d.o;

final class i
  implements ValueAnimator.AnimatorUpdateListener
{
  i(BindAnimationPaperActivity paramBindAnimationPaperActivity, View paramView)
  {
  }

  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f1 = ((Float)paramValueAnimator.getAnimatedValue()).floatValue();
    this.a.setTranslationX(f1);
    float f2 = o.a(this.b, 20.0F);
    this.a.setTranslationY(f1 / 4.0F + f2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.i
 * JD-Core Version:    0.6.2
 */