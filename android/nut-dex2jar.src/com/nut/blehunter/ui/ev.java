package com.nut.blehunter.ui;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.nut.blehunter.u;

final class ev
  implements CompoundButton.OnCheckedChangeListener
{
  ev(SilencesActivity paramSilencesActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    SilencesActivity.a(this.a);
    if (paramBoolean)
    {
      u.a("NTSilentPeriodEvent", "FUNCTION_ENABLED");
      return;
    }
    u.a("NTSilentPeriodEvent", "FUNCTION_DISABLED");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ev
 * JD-Core Version:    0.6.2
 */