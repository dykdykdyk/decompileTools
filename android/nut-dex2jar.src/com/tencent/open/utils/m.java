package com.tencent.open.utils;

import android.os.Bundle;
import org.json.JSONObject;

final class m extends Thread
{
  m(l paraml, Bundle paramBundle)
  {
  }

  public final void run()
  {
    try
    {
      JSONObject localJSONObject = s.d(HttpUtils.a(l.a(this.b), "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf", "GET", this.a).a);
      l.a(this.b, localJSONObject);
      l.b(this.b);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.m
 * JD-Core Version:    0.6.2
 */