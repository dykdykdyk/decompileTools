package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.sina.weibo.sdk.a.c;

final class k extends p
{
  private Activity b;
  private f c;
  private c d;

  public k(Activity paramActivity, f paramf)
  {
    this.b = paramActivity;
    this.c = paramf;
    this.d = this.c.a;
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
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }

  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    if (this.a != null)
      this.a.a();
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (this.a != null)
      this.a.b(paramString);
    if (paramString.startsWith("sinaweibo://browser/close"))
    {
      paramWebView = com.sina.weibo.sdk.d.p.b(paramString);
      if ((!paramWebView.isEmpty()) && (this.d != null))
        this.d.a(paramWebView);
      WeiboSdkBrowser.a(this.b, this.c.b, null);
      return true;
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.k
 * JD-Core Version:    0.6.2
 */