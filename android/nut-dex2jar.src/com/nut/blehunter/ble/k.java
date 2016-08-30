package com.nut.blehunter.ble;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

final class k
  implements Runnable
{
  private Handler a;
  private String b;

  public k(Handler paramHandler, String paramString)
  {
    this.a = paramHandler;
    this.b = paramString;
  }

  public final void run()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("device_id", this.b);
    Message localMessage = this.a.obtainMessage();
    localMessage.setData(localBundle);
    localMessage.what = 35;
    this.a.sendMessage(localMessage);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.k
 * JD-Core Version:    0.6.2
 */