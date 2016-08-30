package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import com.nut.blehunter.ui.b.a.k;

final class bt extends CountDownTimer
{
  bt(MapLocationActivity paramMapLocationActivity)
  {
    super(15000L, 5000L);
  }

  public final void onFinish()
  {
    k.b(this.a);
    if (this.a.isFinishing())
      return;
    MapLocationActivity.a(this.a);
  }

  public final void onTick(long paramLong)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bt
 * JD-Core Version:    0.6.2
 */