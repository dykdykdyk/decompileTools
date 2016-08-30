package com.baidu.android.pushservice;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import com.baidu.android.pushservice.i.o;
import com.baidu.android.pushservice.message.a.h;

class PushMessageReceiver$2 extends Thread
{
  PushMessageReceiver$2(PushMessageReceiver paramPushMessageReceiver, Context paramContext, int paramInt, String paramString1, String paramString2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, PushMessageReceiver.a parama)
  {
  }

  public void run()
  {
    String[] arrayOfString = h.a(this.a, this.b, this.c, this.d, this.e, this.f);
    if ((arrayOfString == null) || (arrayOfString.length != 2))
      Log.e(PushMessageReceiver.TAG, " check message error !");
    do
    {
      return;
      Message localMessage = new Message();
      Bundle localBundle = new Bundle();
      localBundle.putString("message", arrayOfString[0]);
      localBundle.putString("custom_content", arrayOfString[1]);
      localMessage.setData(localBundle);
      this.g.sendMessage(localMessage);
      com.baidu.android.pushservice.util.m.a("message " + arrayOfString[0] + " at time of " + System.currentTimeMillis(), this.a);
    }
    while (a.b() <= 0);
    o.b(this.a, this.c, this.d, this.b, arrayOfString[0].getBytes(), 0, com.baidu.android.pushservice.i.m.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushMessageReceiver.2
 * JD-Core Version:    0.6.2
 */