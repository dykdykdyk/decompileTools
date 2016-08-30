package com.nut.blehunter.rxApi;

import android.content.Intent;
import android.support.v4.app.s;
import android.support.v4.app.v;
import android.text.TextUtils;
import com.nut.blehunter.ui.SendMailActivity;
import com.nut.blehunter.ui.b.a.d;

final class g
  implements d
{
  g(String paramString1, String paramString2, v paramv)
  {
  }

  public final void a(s params, int paramInt)
  {
    if ((TextUtils.isEmpty(this.a)) || (TextUtils.isEmpty(this.b)))
      return;
    params = new Intent(this.c, SendMailActivity.class);
    params.putExtra("country", this.a);
    params.putExtra("mobile", this.b);
    this.c.startActivity(params);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.rxApi.g
 * JD-Core Version:    0.6.2
 */