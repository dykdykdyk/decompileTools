package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.sina.weibo.sdk.a.c;

final class i extends p
{
  private Activity b;
  private g c;
  private c d;

  public i(Activity paramActivity, g paramg)
  {
    this.b = paramActivity;
    this.c = paramg;
    this.d = paramg.a;
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    if (this.a != null)
      this.a.c(paramString);
    super.onPageFinished(paramWebView, paramString);
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    if (this.a != null)
      this.a.a(paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if (this.a != null)
      this.a.a(paramInt, paramString1, paramString2);
    g.a(this.b, 2, paramString1);
    WeiboSdkBrowser.a(this.b, this.c.b, null);
  }

  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    if (this.a != null)
      this.a.a();
    paramSslErrorHandler.cancel();
    g.a(this.b, 2, "ReceivedSslError");
    WeiboSdkBrowser.a(this.b, this.c.b, null);
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (this.a != null)
      this.a.b(paramString);
    if (paramString.startsWith("sinaweibo://browser/close"))
    {
      paramString = com.sina.weibo.sdk.d.p.b(paramString);
      if ((!paramString.isEmpty()) && (this.d != null))
        this.d.a(paramString);
      paramWebView = paramString.getString("code");
      paramString = paramString.getString("msg");
      if (TextUtils.isEmpty(paramWebView))
        g.b(this.b);
      while (true)
      {
        WeiboSdkBrowser.a(this.b, this.c.b, null);
        return true;
        if (!"0".equals(paramWebView))
          g.a(this.b, 2, paramString);
        else
          g.a(this.b, 0, "send ok!!!");
      }
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.i
 * JD-Core Version:    0.6.2
 */