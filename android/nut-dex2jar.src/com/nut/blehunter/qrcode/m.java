package com.nut.blehunter.qrcode;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class m extends BroadcastReceiver
{
  private m(k paramk)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.BATTERY_CHANGED".equals(paramIntent.getAction()))
      if (paramIntent.getIntExtra("plugged", -1) > 0)
        break label36;
    label36: for (int i = 1; i != 0; i = 0)
    {
      this.a.a();
      return;
    }
    k.a(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.m
 * JD-Core Version:    0.6.2
 */