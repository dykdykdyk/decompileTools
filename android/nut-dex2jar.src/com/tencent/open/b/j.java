package com.tencent.open.b;

import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.tencent.open.a.h;
import com.tencent.open.utils.l;
import java.util.List;

final class j
  implements Runnable
{
  j(g paramg, long paramLong1, String paramString1, String paramString2, int paramInt, long paramLong2, long paramLong3)
  {
  }

  public final void run()
  {
    int j = 1;
    while (true)
    {
      try
      {
        long l1 = SystemClock.elapsedRealtime();
        long l2 = this.a;
        Object localObject1 = new Bundle();
        Object localObject2 = a.a(com.tencent.open.utils.g.a());
        ((Bundle)localObject1).putString("apn", (String)localObject2);
        ((Bundle)localObject1).putString("appid", "1000067");
        ((Bundle)localObject1).putString("commandid", this.b);
        ((Bundle)localObject1).putString("detail", this.c);
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("network=").append((String)localObject2).append('&');
        localObject2 = localStringBuilder.append("sdcard=");
        if (Environment.getExternalStorageState().equals("mounted"))
        {
          i = 1;
          ((StringBuilder)localObject2).append(i).append('&');
          localStringBuilder.append("wifi=").append(a.c(com.tencent.open.utils.g.a()));
          ((Bundle)localObject1).putString("deviceInfo", localStringBuilder.toString());
          i = 100 / g.a(this.d);
          if (i > 0)
            break label449;
          i = j;
          label177: ((Bundle)localObject1).putString("frequency", String.valueOf(i));
          ((Bundle)localObject1).putString("reqSize", this.e);
          ((Bundle)localObject1).putString("resultCode", this.d);
          ((Bundle)localObject1).putString("rspSize", this.f);
          ((Bundle)localObject1).putString("timeCost", String.valueOf(l1 - l2));
          ((Bundle)localObject1).putString("uin", "1000");
          localObject1 = new b((Bundle)localObject1);
          this.h.c.add(localObject1);
          int k = this.h.c.size();
          j = l.a(com.tencent.open.utils.g.a(), null).a("Agent_ReportTimeInterval");
          i = j;
          if (j == 0)
            i = 10000;
          if ((g.a("report_cgi", k)) || (this.g))
          {
            this.h.b();
            this.h.f.removeMessages(1000);
            return;
          }
          if (!this.h.f.hasMessages(1000))
          {
            localObject1 = Message.obtain();
            ((Message)localObject1).what = 1000;
            this.h.f.sendMessageDelayed((Message)localObject1, i);
            return;
          }
        }
      }
      catch (Exception localException)
      {
        h.b("openSDK_LOG.ReportManager", "--> reportCGI, exception in sub thread.", localException);
        return;
      }
      label449: 
      do
      {
        break label177;
        return;
        i = 0;
        break;
      }
      while (i <= 100);
      int i = 100;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.b.j
 * JD-Core Version:    0.6.2
 */