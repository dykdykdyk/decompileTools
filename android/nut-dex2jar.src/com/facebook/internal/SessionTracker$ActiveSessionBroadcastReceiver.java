package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.facebook.Session;

class SessionTracker$ActiveSessionBroadcastReceiver extends BroadcastReceiver
{
  private SessionTracker$ActiveSessionBroadcastReceiver(SessionTracker paramSessionTracker)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.facebook.sdk.ACTIVE_SESSION_SET".equals(paramIntent.getAction()))
    {
      paramContext = Session.getActiveSession();
      if (paramContext != null)
        paramContext.addCallback(SessionTracker.access$100(this.this$0));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.SessionTracker.ActiveSessionBroadcastReceiver
 * JD-Core Version:    0.6.2
 */