package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import android.widget.TextView;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.aa;

final class dr extends CountDownTimer
{
  dr(ScanDeviceActivity paramScanDeviceActivity)
  {
    super(60000L, 1000L);
  }

  public final void onFinish()
  {
    if (ScanDeviceActivity.l(this.a) == 3)
    {
      aa.b(this.a);
      ScanDeviceActivity.a(this.a, 1);
      u.a("NTBindEvent", "CONNECTION_FAILED", "TYPE", "1");
    }
  }

  public final void onTick(long paramLong)
  {
    TextView localTextView = (TextView)this.a.findViewById(2131558694);
    ((TextView)this.a.findViewById(2131558695)).setText(this.a.getString(2131099776, new Object[] { Long.valueOf(paramLong / 1000L) }));
    if (paramLong / 1000L == 45L)
      localTextView.setText(2131099778);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dr
 * JD-Core Version:    0.6.2
 */