package com.nut.blehunter.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.nut.blehunter.ble.a;
import com.nut.blehunter.entity.m;

final class b extends BroadcastReceiver
{
  b(NutTrackerService paramNutTrackerService)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!m.a().c());
    do
    {
      return;
      paramContext = paramIntent.getAction();
      if ("com.nutspace.action.app.background".equals(paramContext))
      {
        NutTrackerService.a(this.a, paramIntent);
        return;
      }
      if ("com.nutspace.action.app.foreground".equals(paramContext))
      {
        NutTrackerService.a(this.a);
        return;
      }
      if ("com.nutspace.action.restart.schedule.scan".equals(paramContext))
      {
        this.a.a(7, null);
        return;
      }
    }
    while (!"com.nutspace.action.stop.play.sound".equals(paramContext));
    NutTrackerService.b(this.a).b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.service.b
 * JD-Core Version:    0.6.2
 */