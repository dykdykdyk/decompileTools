package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.sina.weibo.sdk.a.c;

final class s extends p
{
  private Activity b;
  private q c;
  private c d;
  private r e;

  public s(Activity paramActivity, q paramq)
  {
    this.b = paramActivity;
    this.c = paramq;
    this.e = paramq.c;
    this.d = paramq.a;
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
    boolean bool = paramString.startsWith("sinaweibo://browser/close");
    if ((paramString.startsWith("sinaweibo://browser/close")) || (paramString.startsWith("sinaweibo://browser/datatransfer")))
    {
      paramWebView = com.sina.weibo.sdk.d.p.b(paramString);
      if ((!paramWebView.isEmpty()) && (this.d != null))
        this.d.a(paramWebView);
      if (bool)
        WeiboSdkBrowser.a(this.b, this.c.b, this.c.h);
      return true;
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.s
 * JD-Core Version:    0.6.2
 */