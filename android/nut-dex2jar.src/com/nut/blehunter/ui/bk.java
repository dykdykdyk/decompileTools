package com.nut.blehunter.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bk extends BroadcastReceiver
{
  bk(MainActivity paramMainActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.TIME_TICK".equals(paramIntent.getAction()))
      MainActivity.a(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bk
 * JD-Core Version:    0.6.2
 */