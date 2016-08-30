package com.baidu.android.pushservice;

import android.widget.Toast;

class PushServiceReceiver$a$1
  implements Runnable
{
  PushServiceReceiver$a$1(PushServiceReceiver.a parama)
  {
  }

  public void run()
  {
    Toast.makeText(this.a.a, "富媒体推送没有声明必须的Activity，请检查！", 1).show();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushServiceReceiver.a.1
 * JD-Core Version:    0.6.2
 */