package com.sina.weibo.sdk.c;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

final class i
{
  static List<f> a;
  static int b = 5;
  private static i c;
  private static Map<String, f> d;

  private i()
  {
    a = new ArrayList();
    d = new HashMap();
    com.sina.weibo.sdk.d.i.b("WBAgent", "init handler");
  }

  public static i a()
  {
    try
    {
      if (c == null)
        c = new i();
      i locali = c;
      return locali;
    }
    finally
    {
    }
  }

  final void a(List<f> paramList)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      paramList = paramList.iterator();
      while (true)
      {
        if (!paramList.hasNext())
        {
          h.a(new j(this, localStringBuilder.toString()));
          return;
        }
        localStringBuilder.append(b.a((f)paramList.next()).toString()).append(",");
      }
    }
    finally
    {
    }
    throw paramList;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.c.i
 * JD-Core Version:    0.6.2
 */