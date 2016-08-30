package com.amap.api.services.core;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ac extends a<String, String>
{
  private String h;

  public ac(Context paramContext, String paramString)
  {
    super(paramContext, paramString);
    this.h = paramString;
  }

  protected byte[] a(int paramInt, ci paramci, cj paramcj)
    throws ai
  {
    byte[] arrayOfByte = null;
    if (paramInt == 1)
      arrayOfByte = paramci.d(paramcj);
    while (paramInt != 2)
      return arrayOfByte;
    return paramci.e(paramcj);
  }

  protected String b(String paramString)
    throws AMapException
  {
    String str;
    do
    {
      try
      {
        paramString = new JSONObject(paramString);
        str = n.a(paramString, "code");
        if ("1".equals(str))
          return n.a(paramString, "transfer_url");
        if ("0".equals(str))
          throw new AMapException("其他未知错误");
      }
      catch (JSONException paramString)
      {
        i.a(paramString, "ShareUrlSearchHandler", "paseJSON");
        return null;
      }
      if ("2".equals(str))
        throw new AMapException("短串请求失败");
      if ("3".equals(str))
        throw new AMapException("请求参数非法");
      if ("4".equals(str))
        throw new AMapException("用户签名未通过");
    }
    while (!"5".equals(str));
    throw new AMapException("短串分享认证失败");
  }

  public Map<String, String> b()
  {
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("channel=open_api&flag=1").append("&address=" + URLEncoder.encode(this.h));
    Object localObject1 = new StringBuffer();
    ((StringBuffer)localObject1).append("open_api1").append(this.h).append("@8UbJH6N2szojnTHONAWzB6K7N1kaj7Y0iUMarxac");
    localObject1 = ap.a(((StringBuffer)localObject1).toString());
    ((StringBuilder)localObject2).append("&sign=").append(((String)localObject1).toUpperCase(Locale.US));
    ((StringBuilder)localObject2).append("&output=json");
    localObject1 = null;
    try
    {
      localObject2 = ah.a(((StringBuilder)localObject2).toString().getBytes("utf-8"), "Yaynpa84IKOfasFx".substring(0, 16).getBytes("utf-8"));
      localObject1 = localObject2;
      localObject2 = new HashMap();
      ((Map)localObject2).put("ent", "2");
      ((Map)localObject2).put("in", ao.b((byte[])localObject1));
      ((Map)localObject2).put("keyt", "openapi");
      return localObject2;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        i.a(localUnsupportedEncodingException, "ShareUrlSearchHandler", "getParams");
    }
  }

  public String g()
  {
    return "http://m5.amap.com/ws/mapapi/shortaddress/transform";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ac
 * JD-Core Version:    0.6.2
 */