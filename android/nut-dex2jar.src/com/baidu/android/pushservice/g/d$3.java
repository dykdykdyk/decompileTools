package com.baidu.android.pushservice.g;

import java.util.HashMap;

class d$3
  implements e
{
  d$3(d paramd, boolean paramBoolean, String paramString1, String paramString2, a parama)
  {
  }

  public void a(int paramInt, HashMap<String, String> paramHashMap)
  {
    if (paramInt == 0)
      if (this.a)
      {
        d.a(this.e, this.b, this.c);
        com.baidu.android.pushservice.d.a.a().a(this.b, this.c);
        paramHashMap = null;
      }
    while (true)
    {
      if (this.d != null)
      {
        paramHashMap = d.a(this.e, paramInt, null, this.c, this.b, null, paramHashMap, -1);
        if (!this.a)
          break;
        this.d.d(paramInt, paramHashMap);
      }
      return;
      this.e.a(null, this.c, false);
      paramHashMap = null;
      continue;
      paramHashMap = (String)paramHashMap.get("error_msg");
    }
    this.d.b(paramInt, paramHashMap);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g.d.3
 * JD-Core Version:    0.6.2
 */