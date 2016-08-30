package com.nut.blehunter.ui;

import android.support.v4.app.s;
import android.text.TextUtils;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.d;
import com.umeng.analytics.b;

final class ci
  implements d
{
  ci(MoreActivity paramMoreActivity, String paramString)
  {
  }

  public final void a(s params, int paramInt)
  {
    u.a("NTAccountEvent", "LOGOUT_SUCCESSFUL", "USER_ID", MoreActivity.a(this.b).a);
    this.b.p();
    MoreActivity localMoreActivity = this.b;
    if (TextUtils.isEmpty(this.a));
    for (params = "logout"; ; params = "force_logout")
    {
      b.a(localMoreActivity, params);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ci
 * JD-Core Version:    0.6.2
 */