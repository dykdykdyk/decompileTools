package com.tencent.open.web.security;

import android.webkit.WebView;
import com.tencent.open.a.h;
import com.tencent.open.c.b;
import com.tencent.open.g;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

public final class d extends g
{
  private String d;

  public d(WebView paramWebView, long paramLong, String paramString1, String paramString2)
  {
    super(paramWebView, paramLong, paramString1);
    this.d = paramString2;
  }

  public final void a()
  {
    h.a("openSDK_LOG.SecureJsListener", "-->onComplete, result: " + null);
  }

  public final void a(String paramString)
  {
    h.a("openSDK_LOG.SecureJsListener", "-->onCustomCallback, js: " + paramString);
    Object localObject = new JSONObject();
    int i = 0;
    if (!b.a)
      i = -4;
    try
    {
      ((JSONObject)localObject).put("result", i);
      ((JSONObject)localObject).put("sn", this.b);
      ((JSONObject)localObject).put("data", paramString);
      localObject = ((JSONObject)localObject).toString();
      paramString = (WebView)this.a.get();
      if (paramString != null)
      {
        StringBuffer localStringBuffer = new StringBuffer("javascript:");
        localStringBuffer.append("if(!!").append(this.d).append("){");
        localStringBuffer.append(this.d);
        localStringBuffer.append("(");
        localStringBuffer.append((String)localObject);
        localStringBuffer.append(")}");
        localObject = localStringBuffer.toString();
        h.a("openSDK_LOG.SecureJsListener", "-->callback, callback: " + (String)localObject);
        paramString.loadUrl((String)localObject);
      }
      return;
    }
    catch (JSONException paramString)
    {
      while (true)
        paramString.printStackTrace();
    }
  }

  public final void b()
  {
    h.b("openSDK_LOG.SecureJsListener", "-->onNoMatchMethod...");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.web.security.d
 * JD-Core Version:    0.6.2
 */