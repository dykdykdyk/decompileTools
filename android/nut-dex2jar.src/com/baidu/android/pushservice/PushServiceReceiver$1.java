package com.baidu.android.pushservice;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.message.a.e;

class PushServiceReceiver$1 extends Thread
{
  PushServiceReceiver$1(PushServiceReceiver paramPushServiceReceiver, Context paramContext, String paramString1, String paramString2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, String paramString3, String paramString4, String paramString5)
  {
  }

  public void run()
  {
    PublicMsg localPublicMsg = e.a(this.a, this.b, this.c, this.d, this.e);
    if (localPublicMsg == null)
      a.e("PushServiceReceiver", "notification check fail !");
    do
    {
      return;
      if ("private".equals(this.f))
      {
        PushServiceReceiver.a(this.a, this.g, this.h, localPublicMsg, this.c, this.b);
        return;
      }
    }
    while (!"rich_media".equals(this.f));
    PushServiceReceiver.a(this.a, this.g, this.h, localPublicMsg, this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushServiceReceiver.1
 * JD-Core Version:    0.6.2
 */