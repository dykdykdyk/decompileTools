package com.nut.blehunter.rxApi;

import android.content.Intent;
import android.support.v4.app.s;
import android.support.v4.app.v;
import com.nut.blehunter.ui.ResetPasswordActivity;
import com.nut.blehunter.ui.b.a.d;

final class f
  implements d
{
  f(v paramv)
  {
  }

  public final void a(s params, int paramInt)
  {
    params = new Intent();
    params.setClass(this.a, ResetPasswordActivity.class);
    this.a.startActivity(params);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.f
 * JD-Core Version:    0.6.2
 */