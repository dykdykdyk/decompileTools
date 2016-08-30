package com.nut.blehunter.ui;

import android.content.Intent;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.nut.blehunter.d.k;
import com.nut.blehunter.service.NutTrackerService;

final class ch
  implements CompoundButton.OnCheckedChangeListener
{
  ch(MoreActivity paramMoreActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    k.a(this.a, "notification_status_switch", paramBoolean);
    paramCompoundButton = new Intent();
    paramCompoundButton.setClass(this.a, NutTrackerService.class);
    paramCompoundButton.setAction("com.nutspace.action.notification.status");
    this.a.startService(paramCompoundButton);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ch
 * JD-Core Version:    0.6.2
 */