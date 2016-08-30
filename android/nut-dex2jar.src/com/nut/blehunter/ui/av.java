package com.nut.blehunter.ui;

import com.nut.blehunter.d.n;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.rxApi.a;
import com.nut.blehunter.rxApi.model.LoginRequestBody;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.f;
import com.twitter.sdk.android.core.p;
import com.twitter.sdk.android.core.q;
import com.twitter.sdk.android.core.y;

final class av extends f<y>
{
  av(LoginActivity paramLoginActivity)
  {
  }

  public final void a(TwitterException paramTwitterException)
  {
    m.a().a(this.a, false);
    n.a(this.a, 0, "twitter login failed");
  }

  public final void a(p<y> paramp)
  {
    LoginActivity.a(this.a, a.a().login("twitter", LoginRequestBody.createWithTwitter(((y)paramp.a).b)));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.av
 * JD-Core Version:    0.6.2
 */