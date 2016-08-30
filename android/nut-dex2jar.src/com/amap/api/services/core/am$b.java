package com.amap.api.services.core;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

class am$b extends cj
{
  private Context a;
  private ar b;
  private String c = "";

  am$b(Context paramContext, ar paramar, String paramString)
  {
    this.a = paramContext;
    this.b = paramar;
    this.c = paramString;
  }

  public Map<String, String> b()
  {
    Object localObject2 = an.q(this.a);
    Object localObject1 = localObject2;
    if (!TextUtils.isEmpty((CharSequence)localObject2))
      localObject1 = ap.a(new StringBuilder((String)localObject2).reverse().toString());
    localObject2 = new HashMap();
    ((Map)localObject2).put("key", aj.f(this.a));
    ((Map)localObject2).put("opertype", this.c);
    ((Map)localObject2).put("plattype", "android");
    ((Map)localObject2).put("product", this.b.a());
    ((Map)localObject2).put("version", this.b.b());
    ((Map)localObject2).put("output", "json");
    ((Map)localObject2).put("androidversion", Build.VERSION.SDK_INT);
    ((Map)localObject2).put("deviceId", localObject1);
    ((Map)localObject2).put("abitype", Build.CPU_ABI);
    ((Map)localObject2).put("ext", this.b.d());
    localObject1 = al.a();
    String str = al.a(this.a, (String)localObject1, as.b((Map)localObject2));
    ((Map)localObject2).put("ts", localObject1);
    ((Map)localObject2).put("scode", str);
    return localObject2;
  }

  public Map<String, String> c()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("User-Agent", this.b.c());
    localHashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[] { this.b.b(), this.b.a() }));
    localHashMap.put("logversion", "2.0");
    return localHashMap;
  }

  public String g()
  {
    return "https://restapi.amap.com/v3/config/resource?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.am.b
 * JD-Core Version:    0.6.2
 */