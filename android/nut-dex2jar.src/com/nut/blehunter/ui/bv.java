package com.nut.blehunter.ui;

import android.content.Intent;
import android.support.v4.app.s;
import com.nut.blehunter.ui.b.a.d;

final class bv
  implements d
{
  bv(MapLocationActivity paramMapLocationActivity)
  {
  }

  public final void a(s params, int paramInt)
  {
    params = new Intent(this.a, ShareManageActivity.class);
    params.putExtra("nut", MapLocationActivity.c(this.a));
    this.a.startActivity(params);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bv
 * JD-Core Version:    0.6.2
 */