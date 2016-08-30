package com.tencent.open.web.security;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.tencent.open.f;
import com.tencent.open.g;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public final class c extends f
{
  public final void a(String paramString1, String paramString2, List<String> paramList, g paramg)
  {
    com.tencent.open.a.h.a("openSDK_LOG.SecureJsBridge", "-->getResult, objectName: " + paramString1 + " | methodName: " + paramString2);
    int j = paramList.size();
    int i = 0;
    while (true)
      if (i < j)
        try
        {
          paramList.set(i, URLDecoder.decode((String)paramList.get(i), "UTF-8"));
          i += 1;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          while (true)
            localUnsupportedEncodingException.printStackTrace();
        }
    paramString1 = (com.tencent.open.h)this.a.get(paramString1);
    if (paramString1 != null)
    {
      com.tencent.open.a.h.b("openSDK_LOG.SecureJsBridge", "-->handler != null");
      paramString1.a(paramString2, paramList, paramg);
      return;
    }
    com.tencent.open.a.h.b("openSDK_LOG.SecureJsBridge", "-->handler == null");
    paramg.b();
  }

  public final boolean a(WebView paramWebView, String paramString)
  {
    com.tencent.open.a.h.a("openSDK_LOG.SecureJsBridge", "-->canHandleUrl---url = " + paramString);
    if (paramString == null)
      return false;
    if (!Uri.parse(paramString).getScheme().equals("jsbridge"))
      return false;
    ArrayList localArrayList = new ArrayList(Arrays.asList((paramString + "/#").split("/")));
    if (localArrayList.size() < 7)
      return false;
    String str1 = (String)localArrayList.get(2);
    String str2 = (String)localArrayList.get(3);
    String str3 = (String)localArrayList.get(4);
    String str4 = (String)localArrayList.get(5);
    com.tencent.open.a.h.a("openSDK_LOG.SecureJsBridge", "-->canHandleUrl, objectName: " + str1 + " | methodName: " + str2 + " | snStr: " + str3);
    if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str3)))
      return false;
    try
    {
      long l = Long.parseLong(str3);
      paramWebView = new d(paramWebView, l, paramString, str4);
      a(str1, str2, localArrayList.subList(6, localArrayList.size() - 1), paramWebView);
      return true;
    }
    catch (Exception paramWebView)
    {
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.web.security.c
 * JD-Core Version:    0.6.2
 */