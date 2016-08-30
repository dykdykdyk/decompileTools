package com.baidu.android.pushservice.message;

import android.content.Context;
import com.baidu.android.pushservice.f.c;
import com.baidu.android.pushservice.h;
import com.baidu.android.pushservice.h.a;
import java.util.HashMap;

class PublicMsg$1
  implements Runnable
{
  PublicMsg$1(PublicMsg paramPublicMsg, String paramString1, String paramString2, String paramString3, Context paramContext)
  {
  }

  public void run()
  {
    try
    {
      Object localObject = new HashMap();
      com.baidu.android.pushservice.e.b.b((HashMap)localObject);
      ((HashMap)localObject).put("method", "linkhit");
      ((HashMap)localObject).put("channel_token", this.a);
      ((HashMap)localObject).put("data", this.b);
      a.c("PublicMsg", "linkhit param -- " + com.baidu.android.pushservice.e.b.a((HashMap)localObject));
      localObject = c.a(h.e() + this.c, "POST", (HashMap)localObject);
      if (((com.baidu.android.pushservice.f.b)localObject).b() == 200)
      {
        com.baidu.android.pushservice.h.b.c("PublicMsg", "<<< public msg send result return OK!", this.d.getApplicationContext());
        return;
      }
      a.e("PublicMsg", "networkRegister request failed, code=" + ((com.baidu.android.pushservice.f.b)localObject).b() + ", err=" + com.baidu.android.pushservice.i.a.b.a(((com.baidu.android.pushservice.f.b)localObject).a()));
      return;
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.b.b("PublicMsg", "error : " + localException.getMessage(), this.d.getApplicationContext());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.PublicMsg.1
 * JD-Core Version:    0.6.2
 */