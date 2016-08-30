package com.tencent.connect.b;

import com.tencent.open.a.h;
import com.tencent.tauth.d;

final class r
  implements Runnable
{
  String a = "";

  public r(j paramj, String paramString)
  {
    this.a = paramString;
  }

  public final void run()
  {
    h.a("openSDK_LOG.AuthDialog", "-->timeoutUrl: " + this.a + " | mRetryUrl: " + j.i(this.b));
    if (this.a.equals(j.i(this.b)))
    {
      j.f(this.b).a(new d(9002, "请求页面超时，请稍后重试！", j.i(this.b)));
      this.b.dismiss();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.r
 * JD-Core Version:    0.6.2
 */