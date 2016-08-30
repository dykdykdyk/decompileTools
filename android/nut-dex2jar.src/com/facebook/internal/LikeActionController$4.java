package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

final class LikeActionController$4 extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (LikeActionController.access$200())
      return;
    paramContext = paramIntent.getAction();
    if ((Utility.areObjectsEqual("com.facebook.sdk.ACTIVE_SESSION_UNSET", paramContext)) || (Utility.areObjectsEqual("com.facebook.sdk.ACTIVE_SESSION_CLOSED", paramContext)));
    for (boolean bool = true; ; bool = false)
    {
      LikeActionController.access$202(true);
      LikeActionController.access$800().postDelayed(new LikeActionController.4.1(this, bool), 100L);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.4
 * JD-Core Version:    0.6.2
 */