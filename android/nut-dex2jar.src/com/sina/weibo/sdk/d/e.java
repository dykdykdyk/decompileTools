package com.sina.weibo.sdk.d;

import com.sina.weibo.sdk.exception.WeiboException;
import org.json.JSONException;
import org.json.JSONObject;

public final class e
{
  String a;
  String b;

  public static e a(String paramString)
    throws WeiboException
  {
    e locale = new e();
    try
    {
      paramString = new JSONObject(paramString);
      if ((paramString.has("error")) || (paramString.has("error_code")))
      {
        i.a("AidTask", "loadAidFromNet has error !!!");
        throw new WeiboException("loadAidFromNet has error !!!");
      }
    }
    catch (JSONException paramString)
    {
      i.a("AidTask", "loadAidFromNet JSONException Msg : " + paramString.getMessage());
      throw new WeiboException("loadAidFromNet has error !!!");
    }
    locale.a = paramString.optString("aid", "");
    locale.b = paramString.optString("sub", "");
    return locale;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.e
 * JD-Core Version:    0.6.2
 */