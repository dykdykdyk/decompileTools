package com.nut.blehunter;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import b.a.a;
import com.nut.blehunter.service.NutTrackerService;

final class j extends BroadcastReceiver
{
  final String a = "reason";
  final String b = "homekey";

  j(i parami)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if (paramContext.equals("android.intent.action.CLOSE_SYSTEM_DIALOGS"))
    {
      paramIntent = paramIntent.getStringExtra("reason");
      if (paramIntent != null)
      {
        a.b("action:" + paramContext + ",reason:" + paramIntent, new Object[0]);
        if (paramIntent.equals("homekey"))
        {
          paramContext = new Intent(this.c.a, NutTrackerService.class);
          paramContext.setAction("com.nutspace.action.app.background");
          paramContext.putExtra("last_activity", this.c.b);
          this.c.a.startService(paramContext);
          if ((this.c.a instanceof Activity))
            ((Activity)this.c.a).finish();
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.j
 * JD-Core Version:    0.6.2
 */