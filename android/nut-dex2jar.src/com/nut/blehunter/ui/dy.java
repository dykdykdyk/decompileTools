package com.nut.blehunter.ui;

import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class dy
  implements Animation.AnimationListener
{
  dy(ScanDeviceActivity paramScanDeviceActivity)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    ScanDeviceActivity.k(this.a).postDelayed(ScanDeviceActivity.j(this.a), 600L);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dy
 * JD-Core Version:    0.6.2
 */