package com.tencent.open;

import android.net.Uri;
import android.webkit.WebView;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class f
{
  public HashMap<String, h> a = new HashMap();

  public final void a(h paramh, String paramString)
  {
    this.a.put(paramString, paramh);
  }

  public void a(String paramString1, String paramString2, List<String> paramList, g paramg)
  {
    com.tencent.open.a.h.a("openSDK_LOG.JsBridge", "getResult---objName = " + paramString1 + " methodName = " + paramString2);
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
    paramString1 = (h)this.a.get(paramString1);
    if (paramString1 != null)
    {
      com.tencent.open.a.h.b("openSDK_LOG.JsBridge", "call----");
      paramString1.a(paramString2, paramList, paramg);
      return;
    }
    com.tencent.open.a.h.b("openSDK_LOG.JsBridge", "not call----objName NOT FIND");
    paramg.b();
  }

  public boolean a(WebView paramWebView, String paramString)
  {
    com.tencent.open.a.h.a("openSDK_LOG.JsBridge", "-->canHandleUrl---url = " + paramString);
    if (paramString == null);
    do
    {
      do
        return false;
      while (!Uri.parse(paramString).getScheme().equals("jsbridge"));
      localObject = new ArrayList(Arrays.asList((paramString + "/#").split("/")));
    }
    while (((ArrayList)localObject).size() < 6);
    String str1 = (String)((ArrayList)localObject).get(2);
    String str2 = (String)((ArrayList)localObject).get(3);
    Object localObject = ((ArrayList)localObject).subList(4, ((ArrayList)localObject).size() - 1);
    paramString = new g(paramWebView, 4L, paramString);
    paramWebView.getUrl();
    a(str1, str2, (List)localObject, paramString);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.f
 * JD-Core Version:    0.6.2
 */