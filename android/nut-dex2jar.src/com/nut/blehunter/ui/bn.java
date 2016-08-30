package com.nut.blehunter.ui;

import android.content.Intent;
import android.support.v4.app.s;
import com.nut.blehunter.ui.b.a.d;

final class bn
  implements d
{
  bn(MainActivity paramMainActivity)
  {
  }

  public final void a(s params, int paramInt)
  {
    params = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
    this.a.startActivityForResult(params, 101);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bn
 * JD-Core Version:    0.6.2
 */