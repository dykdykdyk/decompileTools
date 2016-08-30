package com.baidu.android.pushservice.message.a;

import android.content.Context;
import com.baidu.android.pushservice.f.c;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.util.i;
import java.util.HashMap;

final class d$1
  implements Runnable
{
  d$1(long paramLong, Context paramContext)
  {
  }

  public final void run()
  {
    try
    {
      a.c(d.a(), "setSP LAST_INTERNAL_BIND_TIME, newLastTime is: " + this.a);
      i.a(this.b, "com.baidu.pushservice.internal.bind.LATEST_TIME", this.a);
      Object localObject = d.b(this.b);
      a.c(d.a(), "bindParams is: " + (String)localObject);
      HashMap localHashMap = new HashMap();
      com.baidu.android.pushservice.e.b.b(localHashMap);
      localHashMap.put("device_type", "3");
      localHashMap.put("params", localObject);
      int i = 0;
      int j;
      do
      {
        j = i + 1;
        a.c(d.a(), "HttpUtil.execRequest! INTERNAL_BIND_URL: http://api.tuisong.baidu.com/rest/3.0/oem/upload_unbind_oem");
        localObject = c.a("http://api.tuisong.baidu.com/rest/3.0/oem/upload_unbind_oem", "POST", localHashMap, "BCCS_SDK/3.0");
        if (((com.baidu.android.pushservice.f.b)localObject).b() == 200)
        {
          a.c(d.a(), "code == 200, HTTP POST success!");
          return;
        }
        a.c(d.a(), "code == " + ((com.baidu.android.pushservice.f.b)localObject).b() + ", HTTP POST unsuccess!");
        i = j;
      }
      while (j < 2);
      return;
    }
    catch (Exception localException)
    {
      a.d(d.a(), "warn: " + localException.getMessage());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.d.1
 * JD-Core Version:    0.6.2
 */