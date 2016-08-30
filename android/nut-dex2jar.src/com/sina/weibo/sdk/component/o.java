package com.sina.weibo.sdk.component;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.sina.weibo.sdk.component.a.a;

final class o extends WebChromeClient
{
  private o(WeiboSdkBrowser paramWeiboSdkBrowser)
  {
  }

  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    WeiboSdkBrowser.a(this.a).a(paramInt);
    if (paramInt == 100)
    {
      WeiboSdkBrowser.a(this.a, false);
      this.a.b();
    }
    while (WeiboSdkBrowser.b(this.a))
      return;
    WeiboSdkBrowser.a(this.a, true);
    this.a.b();
  }

  public final void onReceivedTitle(WebView paramWebView, String paramString)
  {
    if ((!WeiboSdkBrowser.d(WeiboSdkBrowser.c(this.a))) && (!WeiboSdkBrowser.d(this.a).booleanValue()))
    {
      WeiboSdkBrowser.a(this.a, paramString);
      WeiboSdkBrowser.e(this.a);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.o
 * JD-Core Version:    0.6.2
 */