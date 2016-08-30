package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import com.nut.blehunter.d.n;
import com.nut.blehunter.ui.b.a.k;

final class cw extends CountDownTimer
{
  cw(NutSettingActivity paramNutSettingActivity)
  {
    super(30000L, 1000L);
  }

  public final void onFinish()
  {
    k.b(this.a);
    n.a(this.a, 0, this.a.getString(2131100031));
  }

  public final void onTick(long paramLong)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cw
 * JD-Core Version:    0.6.2
 */