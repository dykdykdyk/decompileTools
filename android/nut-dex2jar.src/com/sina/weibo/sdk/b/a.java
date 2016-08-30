package com.sina.weibo.sdk.b;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

final class a extends g
{
  long a;
  List<String> b;
  String c;
  String d;

  public a()
  {
  }

  public a(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.d = paramJSONObject.optString("download_url");
    String str = paramJSONObject.optString("app_package");
    if (!TextUtils.isEmpty(str))
      this.b = Arrays.asList(str.split("\\|"));
    this.c = paramJSONObject.optString("app_sign");
    this.a = paramJSONObject.optLong("app_version");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b.a
 * JD-Core Version:    0.6.2
 */