package com.baidu.android.pushservice.g;

import java.util.HashMap;

class d$2$1
  implements e
{
  d$2$1(d.2 param2, c paramc)
  {
  }

  public void a(int paramInt, HashMap<String, String> paramHashMap)
  {
    String str1;
    String str2;
    boolean bool;
    if (paramHashMap != null)
    {
      str1 = (String)paramHashMap.get("channel_id");
      str2 = (String)paramHashMap.get("user_id");
      Object localObject = null;
      if (paramInt != 0)
        break label169;
      this.b.i.a(this.b.a, this.a);
      paramHashMap = localObject;
      if ((!this.a.g()) || (!this.b.b))
        break label182;
      bool = true;
      label80: if (this.b.c != null)
        if (!bool)
          break label188;
    }
    label169: label182: label188: for (int i = 0; ; i = 1)
    {
      this.b.c.c(paramInt, d.a(this.b.i, paramInt, str1, this.b.d, this.b.e, str2, paramHashMap, i));
      if (paramInt == 0)
        this.b.i.a(bool, this.b.a, this.a);
      return;
      paramHashMap = (String)paramHashMap.get("error_msg");
      break;
      bool = false;
      break label80;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g.d.2.1
 * JD-Core Version:    0.6.2
 */