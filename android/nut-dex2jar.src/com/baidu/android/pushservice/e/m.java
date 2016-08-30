package com.baidu.android.pushservice.e;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import java.util.HashMap;

public class m extends c
{
  int e = 1;
  int f = 1;

  public m(l paraml, Context paramContext, int paramInt1, int paramInt2)
  {
    super(paraml, paramContext);
    this.e = paramInt1;
    this.f = paramInt2;
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "fetch");
    paramHashMap.put("fetch_type", this.e);
    paramHashMap.put("fetch_num", this.f);
    a.c("Fetch", "FETCH param -- " + b.a(paramHashMap));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.m
 * JD-Core Version:    0.6.2
 */