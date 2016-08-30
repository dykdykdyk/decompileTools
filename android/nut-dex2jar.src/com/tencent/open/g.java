package com.tencent.open;

import android.webkit.WebView;
import java.lang.ref.WeakReference;

public class g
{
  public WeakReference<WebView> a;
  public long b;
  protected String c;

  public g(WebView paramWebView, long paramLong, String paramString)
  {
    this.a = new WeakReference(paramWebView);
    this.b = paramLong;
    this.c = paramString;
  }

  public void a()
  {
    WebView localWebView = (WebView)this.a.get();
    if (localWebView == null)
      return;
    localWebView.loadUrl("javascript:window.JsBridge&&JsBridge.callback(" + this.b + ",{'r':0,'result':" + "'undefined'" + "});");
  }

  public void a(String paramString)
  {
    WebView localWebView = (WebView)this.a.get();
    if (localWebView != null)
      localWebView.loadUrl("javascript:" + paramString);
  }

  public void b()
  {
    WebView localWebView = (WebView)this.a.get();
    if (localWebView == null)
      return;
    localWebView.loadUrl("javascript:window.JsBridge&&JsBridge.callback(" + this.b + ",{'r':1,'result':'no such method'})");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.g
 * JD-Core Version:    0.6.2
 */