package com.twitter.sdk.android.core.identity;

import android.content.Intent;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import com.twitter.sdk.android.core.p;
import io.fabric.sdk.android.r;

final class e extends com.twitter.sdk.android.core.f<OAuthResponse>
{
  e(c paramc)
  {
  }

  public final void a(TwitterException paramTwitterException)
  {
    io.fabric.sdk.android.f.b().c("Twitter", "Failed to get access token", paramTwitterException);
    this.a.a(1, new TwitterAuthException("Failed to get access token"));
  }

  public final void a(p<OAuthResponse> paramp)
  {
    Intent localIntent = new Intent();
    paramp = (OAuthResponse)paramp.a;
    localIntent.putExtra("screen_name", paramp.b);
    localIntent.putExtra("user_id", paramp.c);
    localIntent.putExtra("tk", paramp.a.b);
    localIntent.putExtra("ts", paramp.a.c);
    this.a.a.a(-1, localIntent);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.e
 * JD-Core Version:    0.6.2
 */