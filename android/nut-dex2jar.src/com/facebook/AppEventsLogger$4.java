package com.facebook;

import com.facebook.internal.Utility;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class AppEventsLogger$4
  implements Runnable
{
  public final void run()
  {
    HashSet localHashSet = new HashSet();
    synchronized (AppEventsLogger.access$400())
    {
      Iterator localIterator = AppEventsLogger.access$500().keySet().iterator();
      if (localIterator.hasNext())
        localHashSet.add(((AppEventsLogger.AccessTokenAppIdPair)localIterator.next()).getApplicationId());
    }
    ??? = localObject2.iterator();
    while (((Iterator)???).hasNext())
      Utility.queryAppSettings((String)((Iterator)???).next(), true);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AppEventsLogger.4
 * JD-Core Version:    0.6.2
 */