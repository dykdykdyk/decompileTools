package com.nut.blehunter.ui;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class dw
  implements Animation.AnimationListener
{
  dw(ScanDeviceActivity paramScanDeviceActivity)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    this.a.findViewById(2131558690).setVisibility(0);
    this.a.findViewById(2131558688).setVisibility(8);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dw
 * JD-Core Version:    0.6.2
 */