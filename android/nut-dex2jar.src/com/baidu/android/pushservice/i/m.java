package com.baidu.android.pushservice.i;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class m extends d
{
  public static int a = 0;
  public static int b = 1;
  private int c = 0;

  public m()
  {
  }

  public m(String paramString)
  {
    super(paramString);
  }

  public JSONObject a(Context paramContext)
    throws JSONException
  {
    paramContext = new JSONObject();
    paramContext.put("app_type", this.c);
    if (!TextUtils.isEmpty(d()))
      paramContext.put("app_package_name", d());
    if (!TextUtils.isEmpty(e()))
      paramContext.put("app_name", e());
    if (!TextUtils.isEmpty(f()))
      paramContext.put("app_cfrom", f());
    if (g() != -1)
      paramContext.put("app_vercode", g());
    if (!TextUtils.isEmpty(h()))
      paramContext.put("app_vername", h());
    if (i() != -1)
      paramContext.put("app_push_version", i());
    paramContext.put("app_appid", a());
    if (!TextUtils.isEmpty(b()))
      paramContext.put("user_id_rsa", b());
    if (!TextUtils.isEmpty(c()))
      paramContext.put("user_id", c());
    return paramContext;
  }

  public void c(int paramInt)
  {
    this.c = paramInt;
  }

  public int j()
  {
    return this.c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.m
 * JD-Core Version:    0.6.2
 */