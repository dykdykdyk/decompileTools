package com.nut.blehunter.dfu;

import android.os.CountDownTimer;

final class a extends CountDownTimer
{
  a(DfuActivity paramDfuActivity)
  {
    super(60000L, 1000L);
  }

  public final void onFinish()
  {
    if (!DfuActivity.a(this.a))
    {
      DfuActivity.b(this.a);
      DfuActivity.c(this.a);
    }
  }

  public final void onTick(long paramLong)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.dfu.a
 * JD-Core Version:    0.6.2
 */