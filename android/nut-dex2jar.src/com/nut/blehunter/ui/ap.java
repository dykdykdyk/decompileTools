package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import android.widget.Button;

final class ap extends CountDownTimer
{
  ap(InputPhoneNumberActivity paramInputPhoneNumberActivity)
  {
    super(60000L, 1000L);
  }

  public final void onFinish()
  {
    Button localButton = (Button)this.a.findViewById(2131558813);
    localButton.setText(2131099739);
    localButton.setEnabled(true);
  }

  public final void onTick(long paramLong)
  {
    Button localButton = (Button)this.a.findViewById(2131558813);
    localButton.setEnabled(false);
    localButton.setText(this.a.getString(2131099738, new Object[] { Long.valueOf(paramLong / 1000L) }));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ap
 * JD-Core Version:    0.6.2
 */