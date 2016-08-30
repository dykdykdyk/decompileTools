package com.tencent.open;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.tencent.open.a.h;
import com.tencent.open.utils.n;
import com.tencent.open.utils.s;
import java.lang.ref.WeakReference;

final class b extends WebViewClient
{
  private b(a parama)
  {
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    a.c(this.a).setVisibility(0);
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    h.a("openSDK_LOG.TDialog", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    a.b(this.a).a(new com.tencent.tauth.d(paramInt, paramString1, paramString2));
    if ((a.a(this.a) != null) && (a.a(this.a).get() != null))
      Toast.makeText((Context)a.a(this.a).get(), "网络连接异常或系统错误", 0).show();
    this.a.dismiss();
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    h.a("openSDK_LOG.TDialog", "Redirect URL: " + paramString);
    if (paramString.startsWith(n.a().a((Context)a.a(this.a).get(), "auth://tauth.qq.com/")))
    {
      a.b(this.a).a(s.c(paramString));
      if (this.a.isShowing())
        this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("auth://cancel"))
    {
      a.b(this.a).a();
      if (this.a.isShowing())
        this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("auth://close"))
    {
      if (this.a.isShowing())
        this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("download://"))
    {
      paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(paramString.substring(11))));
      paramWebView.addFlags(268435456);
      if ((a.a(this.a) != null) && (a.a(this.a).get() != null))
        ((Context)a.a(this.a).get()).startActivity(paramWebView);
      return true;
    }
    return paramString.startsWith("auth://progress");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.b
 * JD-Core Version:    0.6.2
 */