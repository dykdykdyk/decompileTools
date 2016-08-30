package com.nut.blehunter.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

final class du
  implements ValueAnimator.AnimatorUpdateListener
{
  du(ScanDeviceActivity paramScanDeviceActivity, View paramView)
  {
  }

  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f = ((Float)paramValueAnimator.getAnimatedValue()).floatValue();
    this.a.setTranslationX((float)(Math.sin(f * 3.141592653589793D) * 25.0D));
    this.a.setTranslationY((float)(Math.cos(f * 3.141592653589793D) * 25.0D));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.du
 * JD-Core Version:    0.6.2
 */