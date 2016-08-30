package com.baidu.android.pushservice.e;

import android.content.Context;
import android.content.Intent;
import com.baidu.android.pushservice.h.a;
import java.util.HashMap;

public class aa extends c
{
  protected String e;
  protected aa.a f;

  public aa(l paraml, Context paramContext, String paramString)
  {
    super(paraml, paramContext);
    this.e = paramString;
  }

  protected void a(Intent paramIntent)
  {
    super.a(paramIntent);
    if (paramIntent != null)
    {
      int i = paramIntent.getIntExtra("error_msg", -1);
      if ((i != 0) && (this.f != null))
        this.f.a(i);
    }
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "settags");
    paramHashMap.put("tags", this.e);
    a.c("SetTags", "SetTags param -- " + b.a(paramHashMap));
  }

  protected String b(String paramString)
  {
    if (this.f != null)
      this.f.a(0);
    return super.b(paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.aa
 * JD-Core Version:    0.6.2
 */