package com.nut.blehunter.ui;

import android.text.TextUtils;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.google.gson.Gson;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.entity.t;
import com.nut.blehunter.u;

final class cj
  implements CompoundButton.OnCheckedChangeListener
{
  cj(NotDisturbActivity paramNotDisturbActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean);
    for (paramCompoundButton = "1"; ; paramCompoundButton = "0")
    {
      if (NotDisturbActivity.a(this.a) != null)
      {
        User localUser = NotDisturbActivity.a(this.a);
        if (!TextUtils.isEmpty(paramCompoundButton))
        {
          t localt = localUser.e();
          if (localt != null)
          {
            localt.a = paramCompoundButton;
            localUser.n = e.a().toJson(localt);
          }
        }
        m.a().a(this.a, NotDisturbActivity.a(this.a));
      }
      NotDisturbActivity.b(this.a);
      u.a("NTUIEventDndRegionSetup", "DND_STATUS_BUTTON_TAPPED", "STATE", paramCompoundButton);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cj
 * JD-Core Version:    0.6.2
 */