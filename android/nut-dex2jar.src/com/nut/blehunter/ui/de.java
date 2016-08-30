package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import android.widget.Button;

final class de extends CountDownTimer
{
  de(RegisterActivity paramRegisterActivity)
  {
    super(60000L, 1000L);
  }

  public final void onFinish()
  {
    RegisterActivity.b(this.a).setText(2131099739);
    RegisterActivity.b(this.a).setEnabled(true);
  }

  public final void onTick(long paramLong)
  {
    RegisterActivity.b(this.a).setText(this.a.getString(2131099738, new Object[] { Long.valueOf(paramLong / 1000L) }));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.de
 * JD-Core Version:    0.6.2
 */