package com.loc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class cw extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent != null);
    try
    {
      if (paramIntent.getAction().equals("android.location.GPS_FIX_CHANGE"))
        ce.b = false;
      return;
    }
    catch (Exception paramContext)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.cw
 * JD-Core Version:    0.6.2
 */