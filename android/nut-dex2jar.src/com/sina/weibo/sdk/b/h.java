package com.sina.weibo.sdk.b;

import com.sina.weibo.sdk.d.i;
import com.sina.weibo.sdk.exception.WeiboException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class h
{
  private static final String d = g.class.getName();
  List<a> a;
  List<d> b;
  int c;

  public h(String paramString)
    throws WeiboException
  {
    a(paramString);
  }

  private void a(String paramString)
    throws WeiboException
  {
    int j = 0;
    if (paramString == null);
    do
    {
      return;
      try
      {
        paramString = new JSONObject(paramString);
        if ((paramString.has("error")) || (paramString.has("error_code")))
        {
          i.d(d, "load cmd api has error !!!");
          throw new WeiboException("load cmd api has error !!!");
        }
      }
      catch (JSONException paramString)
      {
        i.a(d, "parse NotificationInfo error: " + paramString.getMessage());
        return;
      }
      paramString = paramString.optJSONObject("cmd");
    }
    while (paramString == null);
    this.c = paramString.optInt("frequency");
    Object localObject = paramString.optJSONArray("app_install");
    int i;
    if (localObject != null)
    {
      this.a = new ArrayList();
      i = 0;
    }
    while (true)
    {
      if (i >= ((JSONArray)localObject).length())
      {
        paramString = paramString.optJSONArray("app_invoke");
        if (paramString == null)
          break;
        this.b = new ArrayList();
        i = j;
        while (i < paramString.length())
        {
          localObject = paramString.getJSONObject(i);
          this.b.add(new d((JSONObject)localObject));
          i += 1;
        }
        break;
      }
      JSONObject localJSONObject = ((JSONArray)localObject).getJSONObject(i);
      this.a.add(new a(localJSONObject));
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b.h
 * JD-Core Version:    0.6.2
 */