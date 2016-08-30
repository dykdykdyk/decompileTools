package com.amap.api.services.core;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public abstract class b<T, V> extends a<T, V>
{
  public b(Context paramContext, T paramT)
  {
    super(paramContext, paramT);
  }

  private String d(String paramString)
  {
    Object localObject = paramString.split("&");
    Arrays.sort((Object[])localObject);
    StringBuffer localStringBuffer = new StringBuffer();
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      localStringBuffer.append(c(localObject[i]));
      localStringBuffer.append("&");
      i += 1;
    }
    localObject = localStringBuffer.toString();
    if (((String)localObject).length() > 1)
      return (String)((String)localObject).subSequence(0, ((String)localObject).length() - 1);
    return paramString;
  }

  public String b(String paramString)
  {
    if (paramString == null)
      return paramString;
    try
    {
      paramString = URLEncoder.encode(paramString, "utf-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      i.a(paramString, "ProtocalHandler", "strEncoderUnsupportedEncodingException");
      return "";
    }
    catch (Exception paramString)
    {
      while (true)
        i.a(paramString, "ProtocalHandler", "strEncoderException");
    }
  }

  public Map<String, String> b()
  {
    return null;
  }

  protected String c(String paramString)
  {
    if (paramString == null)
      return paramString;
    try
    {
      paramString = URLDecoder.decode(paramString, "utf-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      i.a(paramString, "ProtocalHandler", "strReEncoder");
      return "";
    }
    catch (Exception paramString)
    {
      while (true)
        i.a(paramString, "ProtocalHandler", "strReEncoderException");
    }
  }

  public Map<String, String> c()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Content-Type", "application/x-www-form-urlencoded");
    localHashMap.put("Accept-Encoding", "gzip");
    localHashMap.put("User-Agent", "AMAP SDK Android Search 3.2.1");
    localHashMap.put("X-INFO", al.a(this.d, q.a, null, false));
    localHashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[] { "3.2.1", "sea" }));
    localHashMap.put("logversion", "2.1");
    return localHashMap;
  }

  protected V d()
  {
    return null;
  }

  public abstract String e();

  public byte[] f()
  {
    try
    {
      String str = e();
      Object localObject = d(str);
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append(str);
      str = al.a();
      localStringBuffer.append("&ts=" + str);
      localStringBuffer.append("&scode=" + al.a(this.d, str, (String)localObject));
      localObject = localStringBuffer.toString().getBytes("utf-8");
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      i.a(localThrowable, "ProtocalHandler", "getEntity");
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.b
 * JD-Core Version:    0.6.2
 */