package com.squareup.picasso;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;

class Dispatcher$NetworkBroadcastReceiver extends BroadcastReceiver
{
  static final String EXTRA_AIRPLANE_STATE = "state";
  private final Dispatcher dispatcher;

  Dispatcher$NetworkBroadcastReceiver(Dispatcher paramDispatcher)
  {
    this.dispatcher = paramDispatcher;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    String str;
    do
    {
      do
      {
        return;
        str = paramIntent.getAction();
        if (!"android.intent.action.AIRPLANE_MODE".equals(str))
          break;
      }
      while (!paramIntent.hasExtra("state"));
      this.dispatcher.dispatchAirplaneModeChange(paramIntent.getBooleanExtra("state", false));
      return;
    }
    while (!"android.net.conn.CONNECTIVITY_CHANGE".equals(str));
    paramContext = (ConnectivityManager)Utils.getService(paramContext, "connectivity");
    this.dispatcher.dispatchNetworkStateChange(paramContext.getActiveNetworkInfo());
  }

  void register()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.AIRPLANE_MODE");
    if (this.dispatcher.scansNetworkChanges)
      localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    this.dispatcher.context.registerReceiver(this, localIntentFilter);
  }

  void unregister()
  {
    this.dispatcher.context.unregisterReceiver(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Dispatcher.NetworkBroadcastReceiver
 * JD-Core Version:    0.6.2
 */