package com.loc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class cv extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent != null);
    try
    {
      paramContext = paramIntent.getAction();
      if (paramContext.equals("android.intent.action.MEDIA_MOUNTED"))
        co.t = false;
      if (paramContext.equals("android.intent.action.MEDIA_UNMOUNTED"))
        co.t = true;
      if (paramContext.equals("android.intent.action.MEDIA_EJECT"))
        co.t = true;
      return;
    }
    catch (Exception paramContext)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.cv
 * JD-Core Version:    0.6.2
 */