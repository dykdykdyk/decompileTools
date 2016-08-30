package com.baidu.android.pushservice;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.util.m;
import java.util.concurrent.locks.ReentrantLock;

class PushServiceReceiver$2
  implements Runnable
{
  PushServiceReceiver$2(PushServiceReceiver paramPushServiceReceiver, Context paramContext, Intent paramIntent)
  {
  }

  public void run()
  {
    try
    {
      PushServiceReceiver.a(this.c).lock();
      if (com.baidu.android.pushservice.util.a.b(this.a))
      {
        String str1 = this.b.getStringExtra("pushService_package_name");
        String str2 = this.b.getStringExtra("service_name");
        Object localObject4 = this.b.getParcelableExtra("ad_msg");
        Object localObject3 = null;
        Object localObject1 = localObject3;
        if (localObject4 != null)
        {
          localObject1 = localObject3;
          if ((localObject4 instanceof PublicMsg))
            localObject1 = (PublicMsg)localObject4;
        }
        if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)) || (localObject1 == null))
        {
          localObject3 = new StringBuilder("Extra not valid, servicePkgName=").append(str1).append(" serviceName=").append(str2).append(" pMsg==null - ");
          if (localObject1 == null);
          for (boolean bool = true; ; bool = false)
          {
            com.baidu.android.pushservice.h.a.c("PushServiceReceiver", bool);
            return;
          }
        }
        localObject3 = this.b.getStringExtra("message_id");
        localObject4 = this.b.getStringExtra("app_id");
        com.baidu.android.pushservice.h.a.c("PushServiceReceiver", "show advertise notification, msgid = " + (String)localObject3 + "  appid = " + (String)localObject4 + "  servicePkgName = " + str1 + "  serviceName = " + str2);
        PushServiceReceiver.a(this.c, this.a, str1, str2, (PublicMsg)localObject1, (String)localObject3, (String)localObject4);
        m.a("pushadvertise:  show advertise notification", this.a);
        if (a.b() > 0)
          m.a(this.a, this.b, "09");
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.e("PushServiceReceiver", "error is " + localException.getMessage());
      return;
    }
    finally
    {
      PushServiceReceiver.a(this.c).unlock();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushServiceReceiver.2
 * JD-Core Version:    0.6.2
 */