package com.baidu.android.pushservice.g;

import com.baidu.android.pushservice.e.s.a;
import org.json.JSONObject;

class d$5
  implements s.a
{
  d$5(d paramd, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, a parama, int paramInt)
  {
  }

  public void a(boolean paramBoolean, c paramc)
  {
    if (paramBoolean)
    {
      d.a(this.i, this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
      this.i.a(paramc.b(), paramc.c(), paramc.d(), paramc.f());
    }
    do
    {
      return;
      paramc = null;
    }
    while (this.g == null);
    try
    {
      Object localObject = new JSONObject();
      ((JSONObject)localObject).put("type", "subscribe_service");
      ((JSONObject)localObject).put("error", 40002);
      ((JSONObject)localObject).put("api_key", this.a);
      ((JSONObject)localObject).put("error_msg", "GET LIGHTAPPINFO FAILED , TYPE/APPID/APIKEY NOT VALID");
      ((JSONObject)localObject).put("tag", this.b);
      localObject = ((JSONObject)localObject).toString();
      paramc = (c)localObject;
      label140: this.g.e(40002, paramc);
      return;
    }
    catch (Exception localException)
    {
      break label140;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g.d.5
 * JD-Core Version:    0.6.2
 */