package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.b.b;
import com.tencent.wxop.stat.b.f;
import com.tencent.wxop.stat.b.r;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpHost;

public class x
{
  private static x i = null;
  List<String> a = null;
  volatile int b = 2;
  public volatile String c = "";
  volatile HttpHost d = null;
  int e = 0;
  Context f = null;
  b g = null;
  private f h = null;

  private x(Context paramContext)
  {
    this.f = paramContext.getApplicationContext();
    this.h = new f();
    l.a(paramContext);
    this.g = com.tencent.wxop.stat.b.l.c();
    e();
    this.a = new ArrayList(10);
    this.a.add("117.135.169.101");
    this.a.add("140.207.54.125");
    this.a.add("180.153.8.53");
    this.a.add("120.198.203.175");
    this.a.add("14.17.43.18");
    this.a.add("163.177.71.186");
    this.a.add("111.30.131.31");
    this.a.add("123.126.121.167");
    this.a.add("123.151.152.111");
    this.a.add("113.142.45.79");
    this.a.add("123.138.162.90");
    this.a.add("103.7.30.94");
    c();
  }

  public static x a(Context paramContext)
  {
    if (i == null);
    try
    {
      if (i == null)
        i = new x(paramContext);
      return i;
    }
    finally
    {
    }
    throw paramContext;
  }

  static boolean a(String paramString)
  {
    return Pattern.compile("(2[5][0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})").matcher(paramString).matches();
  }

  private String d()
  {
    try
    {
      if (!a("pingma.qq.com"))
      {
        String str = InetAddress.getByName("pingma.qq.com").getHostAddress();
        return str;
      }
    }
    catch (Exception localException)
    {
      this.g.b(localException);
    }
    return "";
  }

  private void e()
  {
    this.b = 0;
    this.d = null;
    this.c = null;
  }

  public final boolean a()
  {
    return this.b == 1;
  }

  public final boolean b()
  {
    return this.b != 0;
  }

  final void c()
  {
    if (r.e(this.f))
    {
      String str1;
      Object localObject;
      if (t.g)
      {
        str1 = d();
        if (t.b())
          this.g.a("remoteIp ip is " + str1);
        if (com.tencent.wxop.stat.b.l.c(str1))
        {
          if (!this.a.contains(str1))
            break label191;
          localObject = str1;
          t.c("http://" + (String)localObject + ":80/mstat/report");
        }
      }
      this.c = com.tencent.wxop.stat.b.l.j(this.f);
      if (t.b())
        this.g.a("NETWORK name:" + this.c);
      if (com.tencent.wxop.stat.b.l.c(this.c))
        if (!"WIFI".equalsIgnoreCase(this.c))
          break label251;
      label191: label251: for (this.b = 1; ; this.b = 2)
      {
        this.d = com.tencent.wxop.stat.b.l.a(this.f);
        if (v.a())
          v.a(this.f);
        return;
        String str2 = (String)this.a.get(this.e);
        localObject = str2;
        if (!t.b())
          break;
        this.g.c(str1 + " not in ip list, change to:" + str2);
        localObject = str2;
        break;
      }
    }
    if (t.b())
      this.g.a("NETWORK TYPE: network is close.");
    e();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.x
 * JD-Core Version:    0.6.2
 */