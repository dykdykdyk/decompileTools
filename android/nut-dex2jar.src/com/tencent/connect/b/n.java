package com.tencent.connect.b;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.tencent.open.a.h;
import com.tencent.open.c.b;
import com.tencent.open.utils.s;
import com.tencent.open.web.security.c;
import com.tencent.tauth.d;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

final class n extends WebViewClient
{
  private n(j paramj)
  {
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    h.a("openSDK_LOG.AuthDialog", "-->onPageFinished, url: " + paramString);
    j.g(this.a).setVisibility(8);
    if (j.e(this.a) != null)
      j.e(this.a).setVisibility(0);
    if (!TextUtils.isEmpty(paramString))
      j.n(this.a).removeCallbacks((Runnable)j.p(this.a).remove(paramString));
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    h.a("openSDK_LOG.AuthDialog", "-->onPageStarted, url: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    j.g(this.a).setVisibility(0);
    j.a(this.a, SystemClock.elapsedRealtime());
    if (!TextUtils.isEmpty(j.i(this.a)))
      j.n(this.a).removeCallbacks((Runnable)j.p(this.a).remove(j.i(this.a)));
    j.c(this.a, paramString);
    paramWebView = new r(this.a, j.i(this.a));
    j.p(this.a).put(paramString, paramWebView);
    j.n(this.a).postDelayed(paramWebView, 120000L);
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    h.c("openSDK_LOG.AuthDialog", "-->onReceivedError, errorCode: " + paramInt + " | description: " + paramString1);
    if (!s.c(j.a(this.a)))
    {
      j.f(this.a).a(new d(9001, "当前网络不可用，请稍后重试！", paramString2));
      this.a.dismiss();
      return;
    }
    if (!j.i(this.a).startsWith("http://qzs.qq.com/open/mobile/login/qzsjump.html?"))
    {
      long l1 = SystemClock.elapsedRealtime();
      long l2 = j.j(this.a);
      if ((j.k(this.a) <= 0) && (l1 - l2 < j.l(this.a)))
      {
        j.m(this.a);
        j.n(this.a).postDelayed(new o(this), 500L);
        return;
      }
      j.e(this.a).loadUrl(j.o(this.a));
      return;
    }
    j.f(this.a).a(new d(paramInt, paramString1, paramString2));
    this.a.dismiss();
  }

  @TargetApi(8)
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.cancel();
    j.f(this.a).a(new d(paramSslError.getPrimaryError(), "请求不合法，请检查手机安全设置，如系统时间、代理等。", "ssl error"));
    this.a.dismiss();
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    h.a("openSDK_LOG.AuthDialog", "-->Redirect URL: " + paramString);
    if (paramString.startsWith("auth://browser"))
    {
      paramString = s.c(paramString);
      j.a(this.a, j.b(this.a));
      if (!j.c(this.a))
      {
        if (paramString.optString("fail_cb", null) == null)
          break label140;
        paramWebView = this.a;
        paramString = paramString.optString("fail_cb");
        paramString = "javascript:" + paramString + "(" + "" + ");void(" + System.currentTimeMillis() + ");";
        paramWebView.a.loadUrl(paramString);
      }
      while (true)
      {
        return true;
        label140: if (paramString.optInt("fall_to_wv") == 1)
        {
          paramString = this.a;
          if (j.d(this.a).indexOf("?") >= 0);
          for (paramWebView = "&"; ; paramWebView = "?")
          {
            j.a(paramString, paramWebView);
            j.a(this.a, "browser_error=1");
            j.e(this.a).loadUrl(j.d(this.a));
            break;
          }
        }
        paramWebView = paramString.optString("redir", null);
        if (paramWebView != null)
          j.e(this.a).loadUrl(paramWebView);
      }
    }
    if (paramString.startsWith("auth://tauth.qq.com/"))
    {
      j.f(this.a).a(s.c(paramString));
      this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("auth://cancel"))
    {
      j.f(this.a).a();
      this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("auth://close"))
    {
      this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("download://"))
      try
      {
        paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(paramString.substring(11))));
        paramWebView.addFlags(268435456);
        j.a(this.a).startActivity(paramWebView);
        return true;
      }
      catch (Exception paramWebView)
      {
        while (true)
          h.b("openSDK_LOG.AuthDialog", "-->start download activity exception, e: ", paramWebView);
      }
    if (paramString.startsWith("auth://progress"))
    {
      try
      {
        paramWebView = Uri.parse(paramString).getPathSegments();
        if (paramWebView.isEmpty())
          return true;
        int i = Integer.valueOf((String)paramWebView.get(0)).intValue();
        if (i == 0)
        {
          j.g(this.a).setVisibility(8);
          j.e(this.a).setVisibility(0);
        }
        else if (i == 1)
        {
          j.g(this.a).setVisibility(0);
        }
      }
      catch (Exception paramWebView)
      {
        return true;
      }
    }
    else
    {
      if (paramString.startsWith("auth://onLoginSubmit"));
      try
      {
        paramWebView = Uri.parse(paramString).getPathSegments();
        if (!paramWebView.isEmpty())
          j.b(this.a, (String)paramWebView.get(0));
        label538: return true;
        if (j.h(this.a).a(j.e(this.a), paramString))
          return true;
        h.c("openSDK_LOG.AuthDialog", "-->Redirect URL: return false");
        return false;
      }
      catch (Exception paramWebView)
      {
        break label538;
      }
    }
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.n
 * JD-Core Version:    0.6.2
 */