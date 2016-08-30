package com.nut.blehunter.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.nut.blehunter.d.b;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.service.NutTrackerService;

public class BootCompleteReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.intent.action.BOOT_COMPLETED".equals(paramIntent.getAction())) && (m.a().c()))
    {
      paramIntent = new Intent(paramContext, NutTrackerService.class);
      paramIntent.setAction("com.nutspace.action.start.service");
      paramIntent.putExtra("is_active", true);
      paramContext.startService(new Intent(paramContext, NutTrackerService.class));
      b.a(paramContext);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.broadcast.BootCompleteReceiver
 * JD-Core Version:    0.6.2
 */