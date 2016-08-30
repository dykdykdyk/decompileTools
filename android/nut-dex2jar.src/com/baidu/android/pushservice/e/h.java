package com.baidu.android.pushservice.e;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import java.util.HashMap;

public class h extends c
{
  public h(l paraml, Context paramContext)
  {
    super(paraml, paramContext);
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "count");
    a.c("Count", "Count param -- " + b.a(paramHashMap));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.h
 * JD-Core Version:    0.6.2
 */