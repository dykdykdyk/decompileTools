package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class dv
  implements Animation.AnimationListener
{
  dv(ScanDeviceActivity paramScanDeviceActivity, int paramInt)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    boolean bool2 = true;
    paramAnimation = this.b;
    if (this.a == 1)
    {
      bool1 = true;
      label17: ScanDeviceActivity.b(paramAnimation, bool1);
      paramAnimation = this.b;
      if (this.a != 2)
        break label114;
    }
    label114: for (boolean bool1 = bool2; ; bool1 = false)
    {
      ScanDeviceActivity.c(paramAnimation, bool1);
      if (this.a != 3)
      {
        ScanDeviceActivity.e(this.b);
        if (this.b.m != null)
          this.b.m.cancel();
      }
      switch (this.a)
      {
      default:
        return;
        bool1 = false;
        break label17;
      case 1:
      case 2:
      case 3:
      }
    }
    ScanDeviceActivity.f(this.b);
    ScanDeviceActivity.g(this.b);
    return;
    ScanDeviceActivity.a(this.b, System.currentTimeMillis());
    ScanDeviceActivity.h(this.b);
    return;
    if (this.b.m != null)
    {
      this.b.m.cancel();
      this.b.m.start();
    }
    ScanDeviceActivity.d(this.b);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dv
 * JD-Core Version:    0.6.2
 */