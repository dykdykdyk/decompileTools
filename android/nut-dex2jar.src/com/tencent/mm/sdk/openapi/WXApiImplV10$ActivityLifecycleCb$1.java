package com.tencent.mm.sdk.openapi;

import android.util.Log;
import com.tencent.wxop.stat.v;

class WXApiImplV10$ActivityLifecycleCb$1
  implements Runnable
{
  WXApiImplV10$ActivityLifecycleCb$1(WXApiImplV10.ActivityLifecycleCb paramActivityLifecycleCb)
  {
  }

  public void run()
  {
    if ((WXApiImplV10.access$100() != null) && (WXApiImplV10.ActivityLifecycleCb.access$200(this.this$0)))
    {
      Log.v("MicroMsg.SDK.WXApiImplV10.ActivityLifecycleCb", "WXStat trigger onBackground");
      v.a(WXApiImplV10.ActivityLifecycleCb.access$300(this.this$0), "onBackground_WX");
      WXApiImplV10.ActivityLifecycleCb.access$202(this.this$0, false);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.openapi.WXApiImplV10.ActivityLifecycleCb.1
 * JD-Core Version:    0.6.2
 */