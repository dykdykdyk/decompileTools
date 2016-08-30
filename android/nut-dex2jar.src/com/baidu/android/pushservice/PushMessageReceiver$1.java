package com.baidu.android.pushservice;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import java.lang.ref.WeakReference;

class PushMessageReceiver$1 extends PushMessageReceiver.a
{
  PushMessageReceiver$1(PushMessageReceiver paramPushMessageReceiver, Context paramContext)
  {
    super(paramContext);
  }

  public void handleMessage(Message paramMessage)
  {
    if (this.b.get() != null)
      this.a.onMessage((Context)this.b.get(), paramMessage.getData().getString("message"), paramMessage.getData().getString("custom_content"));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushMessageReceiver.1
 * JD-Core Version:    0.6.2
 */