package com.facebook;

final class AppEventsLogger$3
  implements Runnable
{
  public final void run()
  {
    if (AppEventsLogger.getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY)
      AppEventsLogger.access$300(AppEventsLogger.FlushReason.TIMER);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AppEventsLogger.3
 * JD-Core Version:    0.6.2
 */