package com.loc;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

final class eg extends ad
{
  private Context d;
  private eo e;
  private String f = "";

  eg(Context paramContext, eo parameo, String paramString)
  {
    this.d = paramContext;
    this.e = parameo;
    this.f = paramString;
  }

  public final Map<String, String> a()
  {
    Object localObject2 = eh.l(this.d);
    Object localObject1 = localObject2;
    if (!TextUtils.isEmpty((CharSequence)localObject2))
      localObject1 = ek.b(new StringBuilder((String)localObject2).reverse().toString());
    localObject2 = new HashMap();
    ((Map)localObject2).put("key", dy.e(this.d));
    ((Map)localObject2).put("opertype", this.f);
    ((Map)localObject2).put("plattype", "android");
    ((Map)localObject2).put("product", this.e.c);
    ((Map)localObject2).put("version", this.e.a);
    ((Map)localObject2).put("output", "json");
    ((Map)localObject2).put("androidversion", Build.VERSION.SDK_INT);
    ((Map)localObject2).put("deviceId", localObject1);
    ((Map)localObject2).put("abitype", Build.CPU_ABI);
    ((Map)localObject2).put("ext", this.e.d);
    localObject1 = ea.a();
    String str = ea.a(this.d, (String)localObject1, eq.a(eq.a((Map)localObject2)));
    ((Map)localObject2).put("ts", localObject1);
    ((Map)localObject2).put("scode", str);
    return localObject2;
  }

  public final Map<String, String> b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("User-Agent", this.e.b);
    localHashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[] { this.e.a, this.e.c }));
    localHashMap.put("logversion", "2.0");
    return localHashMap;
  }

  public final String c()
  {
    return "https://restapi.amap.com/v3/config/resource?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.eg
 * JD-Core Version:    0.6.2
 */