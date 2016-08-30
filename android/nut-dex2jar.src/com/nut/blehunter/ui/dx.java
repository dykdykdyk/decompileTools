package com.nut.blehunter.ui;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class dx
  implements Animation.AnimationListener
{
  dx(ScanDeviceActivity paramScanDeviceActivity)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    ScanDeviceActivity.i(this.a);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dx
 * JD-Core Version:    0.6.2
 */