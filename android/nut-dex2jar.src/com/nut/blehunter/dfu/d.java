package com.nut.blehunter.dfu;

import android.os.CountDownTimer;
import android.widget.TextView;

final class d extends CountDownTimer
{
  d(DfuActivity paramDfuActivity)
  {
    super(90000L, 1000L);
  }

  public final void onFinish()
  {
    DfuActivity.r(this.a);
    DfuActivity.j(this.a).setText("");
    DfuActivity.s(this.a);
  }

  public final void onTick(long paramLong)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.dfu.d
 * JD-Core Version:    0.6.2
 */