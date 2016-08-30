package com.nut.blehunter.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.nut.blehunter.entity.m;

final class j extends BroadcastReceiver
{
  j(NutTrackerService paramNutTrackerService)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = 1;
    if (!m.a().c());
    while (true)
    {
      return;
      paramContext = paramIntent.getAction();
      if ("android.intent.action.HEADSET_PLUG".equals(paramContext))
      {
        if (paramIntent.hasExtra("state"))
        {
          i = paramIntent.getIntExtra("state", 0);
          if (i == 1)
          {
            com.nut.blehunter.ble.a.a = true;
            return;
          }
          if (i == 0)
            com.nut.blehunter.ble.a.a = false;
        }
      }
      else
      {
        if ("android.intent.action.SCREEN_OFF".equals(paramContext))
        {
          NutTrackerService.a(this.a, paramIntent);
          return;
        }
        if ("android.intent.action.SCREEN_ON".equals(paramContext))
        {
          NutTrackerService.a(this.a);
          return;
        }
        if ("android.intent.action.TIME_TICK".equals(paramContext))
        {
          if (m.a().e());
          while (NutTrackerService.c(this.a) != i)
          {
            NutTrackerService.a(this.a, i);
            this.a.b();
            return;
            i = 0;
          }
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.service.j
 * JD-Core Version:    0.6.2
 */