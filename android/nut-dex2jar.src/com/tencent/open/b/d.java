package com.tencent.open.b;

import android.os.SystemClock;
import com.tencent.open.utils.p;
import com.tencent.open.utils.s;

public final class d
{
  protected static d a;

  public static d a()
  {
    try
    {
      if (a == null)
        a = new d();
      d locald = a;
      return locald;
    }
    finally
    {
    }
  }

  public static void a(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, Long paramLong, String paramString5)
  {
    long l = SystemClock.elapsedRealtime() - paramLong.longValue();
    if ((paramLong.longValue() == 0L) || (l < 0L))
      l = 0L;
    while (true)
    {
      paramLong = new StringBuffer("http://c.isdspeed.qq.com/code.cgi");
      paramLong.append("?domain=mobile.opensdk.com&cgi=opensdk&type=").append(paramInt).append("&code=0&time=").append(l).append("&rate=1&uin=").append(paramString2).append("&data=");
      paramString1 = s.a(String.valueOf(paramInt), "0", String.valueOf(l), "1", paramString1, paramString2, paramString3, paramString4, paramString5);
      p.a(new m(g.a(), paramString1, paramLong.toString(), "GET"));
      return;
    }
  }

  public static void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    paramString1 = s.a(paramString1, paramString4, paramString5, paramString3, paramString2, paramString6, "", paramString7, paramString8, "", "", "");
    g.a().a(paramString1, paramString2);
  }

  public static void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10)
  {
    paramString1 = s.a(paramString1, paramString4, paramString5, paramString3, paramString2, paramString6, paramString7, "", "", paramString8, paramString9, paramString10);
    g.a().a(paramString1, paramString2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.b.d
 * JD-Core Version:    0.6.2
 */