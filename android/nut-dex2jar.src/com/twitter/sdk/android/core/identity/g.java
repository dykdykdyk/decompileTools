package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.f;
import com.twitter.sdk.android.core.y;

public final class g extends a
{
  public g(TwitterAuthConfig paramTwitterAuthConfig, f<y> paramf, int paramInt)
  {
    super(paramTwitterAuthConfig, paramf, paramInt);
  }

  public final boolean a(Activity paramActivity)
  {
    Intent localIntent = new Intent(paramActivity, OAuthActivity.class);
    localIntent.putExtra("auth_config", this.b);
    paramActivity.startActivityForResult(localIntent, this.a);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.g
 * JD-Core Version:    0.6.2
 */