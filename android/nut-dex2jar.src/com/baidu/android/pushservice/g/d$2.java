package com.baidu.android.pushservice.g;

import android.text.TextUtils;
import com.baidu.android.pushservice.e.l;
import com.baidu.android.pushservice.e.s.a;
import com.baidu.android.pushservice.e.t;
import com.baidu.android.pushservice.jni.BaiduAppSSOJni;
import org.json.JSONObject;

class d$2
  implements s.a
{
  d$2(d paramd, String paramString1, boolean paramBoolean, a parama, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5)
  {
  }

  public void a(boolean paramBoolean, c paramc)
  {
    d.2.1 local1;
    l locall;
    if (paramBoolean)
    {
      local1 = new d.2.1(this, paramc);
      locall = new l("method_deal_lapp_bind_intent", this.e, this.d);
      if (!TextUtils.isEmpty(this.e))
        d.a(this.i, new t(locall, this.f, this.g, null, null, this.a, local1, d.a(this.i)));
    }
    while (true)
    {
      return;
      if (TextUtils.isEmpty(this.d))
        continue;
      String str2 = com.baidu.android.pushservice.d.a.a().e(this.a);
      String str1 = "other";
      paramc = str1;
      if (!TextUtils.isEmpty(this.h));
      try
      {
        paramc = new JSONObject(this.h).optString("src");
        paramc = BaiduAppSSOJni.getPushHash(d.a(this.i), str2, this.d, paramc);
        if (TextUtils.isEmpty(paramc))
        {
          if (this.c == null)
            continue;
          this.c.c(40003, d.a(this.i, 40003, null, this.d, this.e, null, "host not resgisted or incorrect channel", -1));
          return;
        }
        d.a(this.i, new t(locall, 2, this.a, paramc, this.h, local1, d.a(this.i)));
        return;
        if (this.c == null)
          continue;
        this.c.c(40002, d.a(this.i, 40002, null, this.d, this.e, null, "GET LIGHTAPPINFO FAILED , TYPE/APPID/APIKEY NOT VALID", -1));
        return;
      }
      catch (Exception paramc)
      {
        while (true)
          paramc = str1;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g.d.2
 * JD-Core Version:    0.6.2
 */