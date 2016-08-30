package com.facebook;

import android.content.Context;

final class AppEventsLogger$5
  implements Runnable
{
  AppEventsLogger$5(Context paramContext, AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, AppEventsLogger.AppEvent paramAppEvent)
  {
  }

  public final void run()
  {
    AppEventsLogger.access$600(this.val$context, this.val$accessTokenAppId).addEvent(this.val$event);
    AppEventsLogger.access$700();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AppEventsLogger.5
 * JD-Core Version:    0.6.2
 */