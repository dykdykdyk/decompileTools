package com.tencent.open.b;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.tencent.open.a.h;
import com.tencent.open.utils.l;
import com.tencent.open.utils.s;
import java.util.List;
import java.util.TimeZone;

final class i
  implements Runnable
{
  i(g paramg, Bundle paramBundle)
  {
  }

  public final void run()
  {
    try
    {
      Object localObject = new Bundle();
      ((Bundle)localObject).putString("uin", "1000");
      ((Bundle)localObject).putString("imei", c.b(com.tencent.open.utils.g.a()));
      ((Bundle)localObject).putString("imsi", c.c(com.tencent.open.utils.g.a()));
      ((Bundle)localObject).putString("android_id", c.d(com.tencent.open.utils.g.a()));
      ((Bundle)localObject).putString("mac", c.a());
      ((Bundle)localObject).putString("platform", "1");
      ((Bundle)localObject).putString("os_ver", Build.VERSION.RELEASE);
      ((Bundle)localObject).putString("position", s.d(com.tencent.open.utils.g.a()));
      ((Bundle)localObject).putString("network", a.a(com.tencent.open.utils.g.a()));
      ((Bundle)localObject).putString("language", c.b());
      ((Bundle)localObject).putString("resolution", c.a(com.tencent.open.utils.g.a()));
      ((Bundle)localObject).putString("apn", a.b(com.tencent.open.utils.g.a()));
      ((Bundle)localObject).putString("model_name", Build.MODEL);
      ((Bundle)localObject).putString("timezone", TimeZone.getDefault().getID());
      ((Bundle)localObject).putString("sdk_ver", "2.9.4.lite");
      ((Bundle)localObject).putString("qz_ver", s.c(com.tencent.open.utils.g.a(), "com.qzone"));
      ((Bundle)localObject).putString("qq_ver", s.b(com.tencent.open.utils.g.a(), "com.tencent.mobileqq"));
      ((Bundle)localObject).putString("qua", s.d(com.tencent.open.utils.g.a(), com.tencent.open.utils.g.b()));
      ((Bundle)localObject).putString("packagename", com.tencent.open.utils.g.b());
      ((Bundle)localObject).putString("app_ver", s.c(com.tencent.open.utils.g.a(), com.tencent.open.utils.g.b()));
      if (this.a != null)
        ((Bundle)localObject).putAll(this.a);
      localObject = new b((Bundle)localObject);
      this.c.d.add(localObject);
      int k = this.c.d.size();
      int j = l.a(com.tencent.open.utils.g.a(), null).a("Agent_ReportTimeInterval");
      int i = j;
      if (j == 0)
        i = 10000;
      if ((g.a("report_via", k)) || (this.b))
      {
        this.c.e();
        this.c.f.removeMessages(1001);
        return;
      }
      if (!this.c.f.hasMessages(1001))
      {
        localObject = Message.obtain();
        ((Message)localObject).what = 1001;
        this.c.f.sendMessageDelayed((Message)localObject, i);
        return;
      }
    }
    catch (Exception localException)
    {
      h.b("openSDK_LOG.ReportManager", "--> reporVia, exception in sub thread.", localException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.b.i
 * JD-Core Version:    0.6.2
 */