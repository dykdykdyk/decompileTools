package com.nut.blehunter.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

final class ef extends BroadcastReceiver
{
  ef(SelectWiFiActivity paramSelectWiFiActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    SelectWiFiActivity.b(this.a);
    paramContext = Message.obtain();
    paramContext.what = 1;
    SelectWiFiActivity.h(this.a).sendMessage(paramContext);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ef
 * JD-Core Version:    0.6.2
 */