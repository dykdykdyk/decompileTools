package com.baidu.android.pushservice.e;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import java.util.HashMap;

public class o extends c
{
  protected String e;

  public o(l paraml, Context paramContext, String paramString)
  {
    super(paraml, paramContext);
    this.e = paramString;
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "gbind");
    paramHashMap.put("gid", this.e);
    a.c("Gbind", "Gbind param -- " + b.a(paramHashMap));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.o
 * JD-Core Version:    0.6.2
 */