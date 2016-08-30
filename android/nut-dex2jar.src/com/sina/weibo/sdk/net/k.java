package com.sina.weibo.sdk.net;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.sina.weibo.sdk.d.i;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public final class k
{
  LinkedHashMap<String, Object> a = new LinkedHashMap();
  public String b;

  public k(String paramString)
  {
    this.b = paramString;
  }

  public final Object a(String paramString)
  {
    return this.a.get(paramString);
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.a.keySet().iterator();
    int i = 1;
    while (true)
    {
      if (!localIterator.hasNext())
        return localStringBuilder.toString();
      String str = (String)localIterator.next();
      Object localObject;
      if (i != 0)
      {
        i = 0;
        localObject = this.a.get(str);
        if ((localObject instanceof String))
        {
          localObject = (String)localObject;
          if (TextUtils.isEmpty((CharSequence)localObject));
        }
      }
      try
      {
        localStringBuilder.append(URLEncoder.encode(str, "UTF-8") + "=" + URLEncoder.encode((String)localObject, "UTF-8"));
        i.b("encodeUrl", localStringBuilder.toString());
        continue;
        localStringBuilder.append("&");
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        while (true)
          localUnsupportedEncodingException.printStackTrace();
      }
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    this.a.put(paramString1, paramString2);
  }

  public final boolean b()
  {
    Iterator localIterator = this.a.keySet().iterator();
    Object localObject;
    do
    {
      if (!localIterator.hasNext())
        return false;
      localObject = (String)localIterator.next();
      localObject = this.a.get(localObject);
    }
    while ((!(localObject instanceof ByteArrayOutputStream)) && (!(localObject instanceof Bitmap)));
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.net.k
 * JD-Core Version:    0.6.2
 */