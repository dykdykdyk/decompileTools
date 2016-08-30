package com.nut.blehunter.d;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.nut.blehunter.service.NutTrackerService;

public final class b
{
  public static void a(Context paramContext)
  {
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    Intent localIntent = new Intent(paramContext, NutTrackerService.class);
    localIntent.setAction("com.nutspace.action.sync.server");
    paramContext = PendingIntent.getService(paramContext, 1000, localIntent, 134217728);
    localAlarmManager.set(2, SystemClock.elapsedRealtime() + 86400000L, paramContext);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.b
 * JD-Core Version:    0.6.2
 */