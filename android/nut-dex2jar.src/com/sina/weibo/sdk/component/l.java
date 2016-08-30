package com.sina.weibo.sdk.component;

import android.text.TextUtils;
import com.sina.weibo.sdk.d.i;
import com.sina.weibo.sdk.exception.WeiboException;

final class l
  implements com.sina.weibo.sdk.net.h
{
  l(WeiboSdkBrowser paramWeiboSdkBrowser, g paramg)
  {
  }

  public final void a(WeiboException paramWeiboException)
  {
    i.a(WeiboSdkBrowser.c(), "post onWeiboException " + paramWeiboException.getMessage());
    g.a(this.a, 2, paramWeiboException.getMessage());
    this.a.finish();
  }

  public final void a(String paramString)
  {
    i.a(WeiboSdkBrowser.c(), "post onComplete : " + paramString);
    paramString = h.a(paramString);
    if ((paramString != null) && (paramString.a == 1) && (!TextUtils.isEmpty(paramString.b)))
    {
      WeiboSdkBrowser.b(this.a, this.b.c(paramString.b));
      return;
    }
    g.a(this.a, 2, "upload pic faild");
    this.a.finish();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.l
 * JD-Core Version:    0.6.2
 */