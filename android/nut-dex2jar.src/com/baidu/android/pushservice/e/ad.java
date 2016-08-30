package com.baidu.android.pushservice.e;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import java.util.HashMap;

public class ad extends d
{
  public ad(l paraml, Context paramContext)
  {
    super(paraml, paramContext);
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    b.b(paramHashMap);
    paramHashMap.put("method", "unbindapp");
    paramHashMap.put("appid", this.b.f);
    a.c("UnbindApp", "UNBINDAPP param -- " + b.a(paramHashMap));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.ad
 * JD-Core Version:    0.6.2
 */