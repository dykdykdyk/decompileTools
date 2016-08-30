package com.twitter.sdk.android.core;

import java.util.Iterator;
import java.util.List;
import retrofit.client.Header;

final class x
{
  private final long a;
  private int b;
  private int c;
  private long d;

  x(List<Header> paramList)
  {
    if (paramList == null)
      throw new IllegalArgumentException("headers must not be null");
    this.a = System.currentTimeMillis();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Header localHeader = (Header)paramList.next();
      if ("x-rate-limit-limit".equals(localHeader.getName()))
        this.b = Integer.valueOf(localHeader.getValue()).intValue();
      else if ("x-rate-limit-remaining".equals(localHeader.getName()))
        this.c = Integer.valueOf(localHeader.getValue()).intValue();
      else if ("x-rate-limit-reset".equals(localHeader.getName()))
        this.d = Long.valueOf(localHeader.getValue()).longValue();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.x
 * JD-Core Version:    0.6.2
 */