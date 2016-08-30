package com.tencent.connect.c;

import android.app.Activity;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.connect.b.v;
import com.tencent.open.a.h;
import com.tencent.open.utils.f;
import com.tencent.tauth.b;

public final class c
  implements f
{
  public c(a parama, Bundle paramBundle, String paramString1, String paramString2, b paramb, Activity paramActivity)
  {
  }

  public final void a(int paramInt, String paramString)
  {
    if (paramInt == 0)
      this.a.putString("imageLocalUrl", paramString);
    while ((!TextUtils.isEmpty(this.b)) || (!TextUtils.isEmpty(this.c)))
    {
      a.a(this.f, this.e, this.a, this.d);
      return;
    }
    if (this.d != null)
    {
      this.d.a(new com.tencent.tauth.d(-6, "获取分享图片失败!", null));
      h.e("openSDK_LOG.QQShare", "shareToMobileQQ -- error: 获取分享图片失败!");
    }
    com.tencent.open.b.d.a();
    com.tencent.open.b.d.a(1, "SHARE_CHECK_SDK", "1000", a.b(this.f).a, "0", Long.valueOf(SystemClock.elapsedRealtime()), "获取分享图片失败!");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.c.c
 * JD-Core Version:    0.6.2
 */