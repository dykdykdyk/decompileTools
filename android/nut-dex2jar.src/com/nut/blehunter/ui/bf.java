package com.nut.blehunter.ui;

import android.os.Bundle;
import com.nut.blehunter.d.n;
import com.nut.blehunter.rxApi.model.LoginRequestBody;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.sina.weibo.sdk.a.b;
import com.sina.weibo.sdk.a.c;
import com.sina.weibo.sdk.exception.WeiboException;

final class bf
  implements c
{
  bf(LoginActivity paramLoginActivity)
  {
  }

  public final void a(Bundle paramBundle)
  {
    b.a.a.b("Weibo auth result is %s", new Object[] { paramBundle.toString() });
    Object localObject = b.a(paramBundle);
    if (((b)localObject).a())
    {
      paramBundle = ((b)localObject).a;
      localObject = ((b)localObject).b;
      LoginActivity.a(this.a, com.nut.blehunter.rxApi.a.a().login("weibo", LoginRequestBody.createWithWeibo(paramBundle, (String)localObject)));
      return;
    }
    n.a(this.a, 0, "Weibo login failed");
  }

  public final void a(WeiboException paramWeiboException)
  {
    n.a(this.a, 0, "Weibo login failed " + paramWeiboException.getMessage());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bf
 * JD-Core Version:    0.6.2
 */