package com.tencent.open;

import android.os.Build.VERSION;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import com.tencent.open.a.h;

final class j extends WebChromeClient
{
  j(i parami)
  {
  }

  public final void onConsoleMessage(String paramString1, int paramInt, String paramString2)
  {
    h.c("openSDK_LOG.JsDialog", "WebChromeClient onConsoleMessage" + paramString1 + " -- From 222 line " + paramInt + " of " + paramString2);
    if (Build.VERSION.SDK_INT == 7)
      this.a.a(paramString1);
  }

  public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    if (paramConsoleMessage == null)
      return false;
    h.c("openSDK_LOG.JsDialog", "WebChromeClient onConsoleMessage" + paramConsoleMessage.message() + " -- From  111 line " + paramConsoleMessage.lineNumber() + " of " + paramConsoleMessage.sourceId());
    i locali;
    if (Build.VERSION.SDK_INT > 7)
    {
      locali = this.a;
      if (paramConsoleMessage != null)
        break label81;
    }
    label81: for (paramConsoleMessage = ""; ; paramConsoleMessage = paramConsoleMessage.message())
    {
      locali.a(paramConsoleMessage);
      return true;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.j
 * JD-Core Version:    0.6.2
 */