package com.sina.weibo.sdk.api.a;

import com.sina.weibo.sdk.api.CmdObject;
import com.sina.weibo.sdk.api.h;
import com.sina.weibo.sdk.c;
import com.sina.weibo.sdk.d.i;

public class j
{
  private static final String a = j.class.getName();

  public static boolean a(c paramc, h paramh)
  {
    if ((paramc == null) || (!paramc.a()));
    do
    {
      return false;
      i.a(a, "WeiboMultiMessage WeiboInfo package : " + paramc.a);
      i.a(a, "WeiboMultiMessage WeiboInfo supportApi : " + paramc.b);
    }
    while (paramc.b < 10351);
    if ((paramc.b < 10352) && (paramh.c != null) && ((paramh.c instanceof CmdObject)))
      paramh.c = null;
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.a.j
 * JD-Core Version:    0.6.2
 */