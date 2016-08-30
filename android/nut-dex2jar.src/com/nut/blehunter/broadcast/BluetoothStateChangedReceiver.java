package com.nut.blehunter.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.service.NutTrackerService;

public class BluetoothStateChangedReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ((m.a().c()) && (!TextUtils.isEmpty(str)) && ("android.bluetooth.adapter.action.STATE_CHANGED".equals(str)))
    {
      int i = paramIntent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1);
      paramIntent = new Intent(paramContext, NutTrackerService.class);
      paramIntent.setAction("com.nutspace.action.bluetooth.state.changed");
      paramIntent.putExtra("android.bluetooth.adapter.extra.STATE", i);
      paramContext.startService(paramIntent);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.broadcast.BluetoothStateChangedReceiver
 * JD-Core Version:    0.6.2
 */