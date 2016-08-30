package com.baidu.android.pushservice.e;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import java.util.HashMap;

public class r extends c
{
  protected String e;

  public r(l paraml, Context paramContext, String paramString)
  {
    super(paraml, paramContext);
    this.e = paramString;
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "gunbind");
    paramHashMap.put("gid", this.e);
    a.c("Gunbind", "Gunbind param -- " + b.a(paramHashMap));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.r
 * JD-Core Version:    0.6.2
 */