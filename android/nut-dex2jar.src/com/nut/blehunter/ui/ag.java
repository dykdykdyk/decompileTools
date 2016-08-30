package com.nut.blehunter.ui;

import android.content.Intent;
import android.support.v4.app.s;
import com.nut.blehunter.a;
import com.nut.blehunter.ui.b.a.d;

final class ag
  implements d
{
  ag(DialogContainerActivity paramDialogContainerActivity)
  {
  }

  public final void a(s params, int paramInt)
  {
    params = new Intent();
    params.setClass(this.a, JumpWebViewActivity.class);
    params.putExtra("URL", a.o + "/#/changeBattery");
    this.a.startActivity(params);
    DialogContainerActivity.a(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ag
 * JD-Core Version:    0.6.2
 */