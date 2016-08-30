package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.sina.weibo.sdk.a.c;
import com.sina.weibo.sdk.exception.WeiboAuthException;

final class b extends p
{
  private Activity b;
  private a c;
  private c d;
  private boolean e = false;

  public b(Activity paramActivity, a parama)
  {
    this.b = paramActivity;
    this.c = parama;
    this.d = this.c.b;
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
    if ((paramString.startsWith(this.c.a.b)) && (!this.e))
    {
      this.e = true;
      paramString = com.sina.weibo.sdk.d.p.a(paramString);
      paramBitmap = paramString.getString("error");
      String str1 = paramString.getString("error_code");
      String str2 = paramString.getString("error_description");
      if ((paramBitmap == null) && (str1 == null))
        if (this.d != null)
          this.d.a(paramString);
      while (true)
      {
        paramWebView.stopLoading();
        WeiboSdkBrowser.a(this.b, this.c.c, null);
        return;
        if (this.d != null)
          this.d.a(new WeiboAuthException(str1, paramBitmap, str2));
      }
    }
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
    if (paramString.startsWith("sms:"))
    {
      paramWebView = new Intent("android.intent.action.VIEW");
      paramWebView.putExtra("address", paramString.replace("sms:", ""));
      paramWebView.setType("vnd.android-dir/mms-sms");
      this.b.startActivity(paramWebView);
      return true;
    }
    if (paramString.startsWith("sinaweibo://browser/close"))
    {
      WeiboSdkBrowser.a(this.b, this.c.c, null);
      return true;
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.b
 * JD-Core Version:    0.6.2
 */