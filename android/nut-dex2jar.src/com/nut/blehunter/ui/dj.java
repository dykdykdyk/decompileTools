package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import android.widget.Button;

final class dj extends CountDownTimer
{
  dj(ResetPasswordActivity paramResetPasswordActivity)
  {
    super(60000L, 1000L);
  }

  public final void onFinish()
  {
    ResetPasswordActivity.a(this.a).setText(2131099739);
    ResetPasswordActivity.a(this.a).setEnabled(true);
  }

  public final void onTick(long paramLong)
  {
    ResetPasswordActivity.a(this.a).setText(this.a.getString(2131099738, new Object[] { Long.valueOf(paramLong / 1000L) }));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dj
 * JD-Core Version:    0.6.2
 */