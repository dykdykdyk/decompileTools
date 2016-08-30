package com.sina.weibo.sdk.c;

import android.content.Context;
import java.util.List;
import java.util.Map;

public final class g
{
  public static void a(Object arg0, String paramString, Map<String, String> paramMap)
  {
    if (??? == null)
    {
      com.sina.weibo.sdk.d.i.c("WBAgent", "unexpected null page or activity in onEvent");
      return;
    }
    if (paramString == null)
    {
      com.sina.weibo.sdk.d.i.c("WBAgent", "unexpected null eventId in onEvent");
      return;
    }
    if ((??? instanceof Context))
      ??? = ???.getClass().getName();
    while (true)
      while (true)
      {
        i locali = i.a();
        String str = (String)???;
        a locala = new a(str, paramString, paramMap);
        locala.a(e.d);
        synchronized (i.a)
        {
          i.a.add(locala);
          com.sina.weibo.sdk.d.i.a("WBAgent", "event--- page:" + str + " ,event name:" + paramString + " ,extend:" + paramMap.toString());
          if (i.a.size() < i.b)
            break;
          locali.a(i.a);
          i.a.clear();
          return;
        }
      }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.c.g
 * JD-Core Version:    0.6.2
 */