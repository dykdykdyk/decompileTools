package com.nut.blehunter.ui;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;

final class cl extends WebViewClient
{
  private cl(NotificationCenterActivity paramNotificationCenterActivity)
  {
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    NotificationCenterActivity.a(this.a).setVisibility(8);
    NotificationCenterActivity.a(this.a, NotificationCenterActivity.b(this.a).equals(paramString));
  }

  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    NotificationCenterActivity.a(this.a, NotificationCenterActivity.b(this.a).equals(paramString));
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cl
 * JD-Core Version:    0.6.2
 */