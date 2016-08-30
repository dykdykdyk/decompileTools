package com.baidu.android.pushservice;

import android.content.Context;
import com.baidu.android.pushservice.util.a;

final class ADPushManager$1
  implements Runnable
{
  ADPushManager$1(Context paramContext)
  {
  }

  public final void run()
  {
    ADPushManager.setPushADMsgEnable(this.a, a.a(this.a));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.ADPushManager.1
 * JD-Core Version:    0.6.2
 */