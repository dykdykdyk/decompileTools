package com.facebook;

final class AppEventsLogger$7
  implements Request.Callback
{
  AppEventsLogger$7(AppEventsLogger.AccessTokenAppIdPair paramAccessTokenAppIdPair, Request paramRequest, AppEventsLogger.SessionEventsState paramSessionEventsState, AppEventsLogger.FlushStatistics paramFlushStatistics)
  {
  }

  public final void onCompleted(Response paramResponse)
  {
    AppEventsLogger.access$900(this.val$accessTokenAppId, this.val$postRequest, paramResponse, this.val$sessionEventsState, this.val$flushState);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AppEventsLogger.7
 * JD-Core Version:    0.6.2
 */