package com.nut.blehunter.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.nut.blehunter.d.g;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.service.NutTrackerService;
import com.nut.blehunter.u;

public class NetworkMonitorReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (m.a().c())
    {
      paramIntent = new Intent();
      paramIntent.setClass(paramContext, NutTrackerService.class);
      paramIntent.setAction("com.nutspace.action.region.change");
      paramContext.startService(paramIntent);
    }
    if (g.b(paramContext))
    {
      if (g.c(paramContext))
      {
        if (m.a().c())
        {
          paramIntent = new Intent(paramContext, NutTrackerService.class);
          paramIntent.setAction("com.nutspace.action.sync.server");
          paramContext.startService(paramIntent);
        }
        u.a("NTStatsPhone", "NETWORK_CONDITION", "NETWORK_CONDITION", "WIFI ");
      }
    }
    else
      return;
    u.a("NTStatsPhone", "NETWORK_CONDITION", "NETWORK_CONDITION", "CELLULAR");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.broadcast.NetworkMonitorReceiver
 * JD-Core Version:    0.6.2
 */