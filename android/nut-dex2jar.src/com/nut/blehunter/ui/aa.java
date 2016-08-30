package com.nut.blehunter.ui;

import android.content.Intent;
import android.support.v4.app.s;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.ui.b.a.d;

final class aa
  implements d
{
  aa(DialogContainerActivity paramDialogContainerActivity, Nut paramNut)
  {
  }

  public final void a(s params, int paramInt)
  {
    params = new Intent();
    params.setClass(this.b, NutDetailActivity.class);
    params.putExtra("nut", this.a);
    this.b.startActivity(params);
    DialogContainerActivity.a(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.aa
 * JD-Core Version:    0.6.2
 */