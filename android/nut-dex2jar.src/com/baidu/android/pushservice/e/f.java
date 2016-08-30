package com.baidu.android.pushservice.e;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.i.t;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class f extends d
{
  protected int f = 0;
  private String g;
  private int h;
  private String i;
  private String j;

  public f(l paraml, Context paramContext, int paramInt1, String paramString, int paramInt2)
  {
    super(paraml, paramContext);
    this.f = paramInt1;
    this.g = paramString;
    this.h = paramInt2;
    if (this.f == 0)
      this.e = true;
  }

  public f(l paraml, Context paramContext, int paramInt1, String paramString1, int paramInt2, String paramString2)
  {
    super(paraml, paramContext);
    this.f = paramInt1;
    this.g = paramString1;
    this.h = paramInt2;
    this.i = paramString2;
    this.j = paraml.j;
    if (this.f == 0)
      this.e = true;
  }

  protected void a(Intent paramIntent)
  {
    paramIntent.putExtra("bind_status", this.f);
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "bind");
    if (TextUtils.isEmpty(this.g));
    for (String str = Build.MODEL; ; str = this.g)
    {
      paramHashMap.put("bind_name", str);
      paramHashMap.put("bind_status", this.f);
      paramHashMap.put("push_sdk_version", this.h);
      if ((!TextUtils.isEmpty(this.j)) && (this.j.equalsIgnoreCase("true")))
        paramHashMap.put("is_baidu_internal_bind", "true");
      if (!TextUtils.isEmpty(this.i))
        paramHashMap.put("bind_notify_status", this.i);
      com.baidu.android.pushservice.h.a.c("Bind", "BIND param -- " + b.a(paramHashMap));
      if (com.baidu.android.pushservice.a.b() > 0)
        t.a(this.a, "039903", 0, this.b.i);
      return;
    }
  }

  protected String b(String paramString)
  {
    String str = super.b(paramString);
    paramString = "";
    try
    {
      Object localObject = new JSONObject(str).getJSONObject("response_params").getString("appid");
      paramString = (String)localObject;
      if (!TextUtils.isEmpty(this.b.e))
      {
        com.baidu.android.pushservice.c.b.a(this.a).f(this.b.e);
        if (!TextUtils.isEmpty(this.b.i))
        {
          localObject = new g(this.b.i, str);
          com.baidu.android.pushservice.c.b.a(this.a).a(this.b.e, (g)localObject);
          if (!TextUtils.isEmpty(paramString))
            PushSettings.a(this.a, paramString, 0, this.b.i);
        }
      }
      return str;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        com.baidu.android.pushservice.h.a.e("Bind", "error " + localJSONException.getMessage());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.f
 * JD-Core Version:    0.6.2
 */