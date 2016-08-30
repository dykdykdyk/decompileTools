package com.nut.blehunter.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.b.j;
import android.text.TextUtils;
import b.a.a;

final class d extends BroadcastReceiver
{
  d(c paramc)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.nutspace.action.share_auth".equals(paramIntent.getAction()))
    {
      paramContext = this.a;
      j.a(paramContext.a).a(paramContext.c);
      paramContext = this.a;
      paramIntent = paramIntent.getStringExtra("code");
      if (TextUtils.isEmpty(paramIntent))
        paramContext.a();
    }
    else
    {
      return;
    }
    a.a("reqCatchToken start", new Object[0]);
    new e(paramContext).execute(new String[] { paramIntent });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.c.d
 * JD-Core Version:    0.6.2
 */