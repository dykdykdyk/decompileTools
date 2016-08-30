package com.crashlytics.android.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.concurrent.atomic.AtomicBoolean;

final class at
{
  private static final IntentFilter f = new IntentFilter("android.intent.action.BATTERY_CHANGED");
  private static final IntentFilter g = new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED");
  private static final IntentFilter h = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
  final AtomicBoolean a;
  final Context b;
  final BroadcastReceiver c;
  final BroadcastReceiver d;
  boolean e;

  public at(Context paramContext)
  {
    this.b = paramContext;
    Intent localIntent = paramContext.registerReceiver(null, f);
    if (localIntent != null)
      i = localIntent.getIntExtra("status", -1);
    if ((i == 2) || (i == 5));
    for (boolean bool = true; ; bool = false)
    {
      this.e = bool;
      this.d = new au(this);
      this.c = new av(this);
      paramContext.registerReceiver(this.d, g);
      paramContext.registerReceiver(this.c, h);
      this.a = new AtomicBoolean(true);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.at
 * JD-Core Version:    0.6.2
 */