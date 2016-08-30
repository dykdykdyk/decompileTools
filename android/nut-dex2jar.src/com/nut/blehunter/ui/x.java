package com.nut.blehunter.ui;

import android.content.Intent;
import android.support.v4.app.s;
import com.nut.blehunter.ui.b.a.d;

final class x
  implements d
{
  x(DialogBoxForPushActivity paramDialogBoxForPushActivity)
  {
  }

  public final void a(s params, int paramInt)
  {
    params = new Intent(this.a, MainActivity.class);
    params.setAction("com.nutspace.action.logout");
    this.a.startActivity(params);
    this.a.finish();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.x
 * JD-Core Version:    0.6.2
 */