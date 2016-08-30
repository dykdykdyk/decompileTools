package com.nut.blehunter.ui;

import android.os.CountDownTimer;

final class cu extends CountDownTimer
{
  cu(NutDetailActivity paramNutDetailActivity, long paramLong)
  {
    super(paramLong, 1000L);
  }

  public final void onFinish()
  {
    if (NutDetailActivity.d(this.a))
      NutDetailActivity.k(this.a);
  }

  public final void onTick(long paramLong)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cu
 * JD-Core Version:    0.6.2
 */