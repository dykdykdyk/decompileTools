package com.umeng.analytics;

import android.graphics.Bitmap;
import android.os.Message;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
import u.aly.ct;
import u.aly.m;

final class e extends WebChromeClient
{
  WebChromeClient a = null;
  private final String c = "ekv";
  private final String d = "event";

  public e(d paramd, WebChromeClient paramWebChromeClient)
  {
    if (paramWebChromeClient == null)
    {
      this.a = new WebChromeClient();
      return;
    }
    this.a = paramWebChromeClient;
  }

  public final void onCloseWindow(WebView paramWebView)
  {
    this.a.onCloseWindow(paramWebView);
  }

  public final boolean onCreateWindow(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2, Message paramMessage)
  {
    return this.a.onCreateWindow(paramWebView, paramBoolean1, paramBoolean2, paramMessage);
  }

  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return this.a.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }

  public final boolean onJsBeforeUnload(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return this.a.onJsBeforeUnload(paramWebView, paramString1, paramString2, paramJsResult);
  }

  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return this.a.onJsConfirm(paramWebView, paramString1, paramString2, paramJsResult);
  }

  public final boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    int i;
    if ("ekv".equals(paramString2))
      try
      {
        paramString2 = new JSONObject(paramString3);
        paramWebView = new HashMap();
        paramString1 = (String)paramString2.remove("id");
        if (paramString2.isNull("duration"))
        {
          i = 0;
          paramString3 = paramString2.keys();
          while (paramString3.hasNext())
          {
            String str = (String)paramString3.next();
            paramWebView.put(str, paramString2.getString(str));
          }
        }
      }
      catch (Exception paramWebView)
      {
        paramWebView.printStackTrace();
      }
    while (true)
    {
      paramJsPromptResult.confirm();
      return true;
      i = ((Integer)paramString2.remove("duration")).intValue();
      break;
      paramString2 = b.a();
      paramString3 = this.b.a;
      long l = i;
      try
      {
        if (!paramString2.e)
          paramString2.a(paramString3);
        paramString2.c.a(paramString1, paramWebView, l);
      }
      catch (Exception paramWebView)
      {
        ct.a(paramWebView);
      }
      continue;
      if (!"event".equals(paramString2))
        break label248;
      try
      {
        paramString2 = new JSONObject(paramString3);
        paramString1 = paramString2.optString("label");
        paramWebView = paramString1;
        if ("".equals(paramString1))
          paramWebView = null;
        b.a().a(this.b.a, paramString2.getString("tag"), paramWebView, paramString2.optInt("duration"));
      }
      catch (Exception paramWebView)
      {
      }
    }
    label248: return this.a.onJsPrompt(paramWebView, paramString1, paramString2, paramString3, paramJsPromptResult);
  }

  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    this.a.onProgressChanged(paramWebView, paramInt);
  }

  public final void onReceivedIcon(WebView paramWebView, Bitmap paramBitmap)
  {
    this.a.onReceivedIcon(paramWebView, paramBitmap);
  }

  public final void onReceivedTitle(WebView paramWebView, String paramString)
  {
    this.a.onReceivedTitle(paramWebView, paramString);
  }

  public final void onRequestFocus(WebView paramWebView)
  {
    this.a.onRequestFocus(paramWebView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.e
 * JD-Core Version:    0.6.2
 */