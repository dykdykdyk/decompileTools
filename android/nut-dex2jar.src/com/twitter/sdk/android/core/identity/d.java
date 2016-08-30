package com.twitter.sdk.android.core.identity;

import android.net.Uri;
import android.net.Uri.Builder;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import com.twitter.sdk.android.core.p;
import io.fabric.sdk.android.r;

final class d extends com.twitter.sdk.android.core.f<OAuthResponse>
{
  d(c paramc)
  {
  }

  public final void a(TwitterException paramTwitterException)
  {
    io.fabric.sdk.android.f.b().c("Twitter", "Failed to get request token", paramTwitterException);
    this.a.a(1, new TwitterAuthException("Failed to get request token"));
  }

  public final void a(p<OAuthResponse> paramp)
  {
    this.a.b = ((OAuthResponse)paramp.a).a;
    Object localObject = this.a.e;
    paramp = this.a.b;
    localObject = Uri.parse(((com.twitter.sdk.android.core.internal.oauth.f)localObject).c.a).buildUpon();
    int i = 0;
    while (i < 2)
    {
      ((Uri.Builder)localObject).appendPath(new java.lang.String[] { "oauth", "authorize" }[i]);
      i += 1;
    }
    paramp = ((Uri.Builder)localObject).appendQueryParameter("oauth_token", paramp.b).build().toString();
    io.fabric.sdk.android.f.b().a("Twitter", "Redirecting user to web view to complete authorization flow");
    localObject = this.a.c;
    i locali = new i(OAuth1aService.a(this.a.d), this.a);
    h localh = new h();
    WebSettings localWebSettings = ((WebView)localObject).getSettings();
    localWebSettings.setAllowFileAccess(false);
    localWebSettings.setJavaScriptEnabled(false);
    ((WebView)localObject).setVerticalScrollBarEnabled(false);
    ((WebView)localObject).setHorizontalScrollBarEnabled(false);
    ((WebView)localObject).setWebViewClient(locali);
    ((WebView)localObject).loadUrl(paramp);
    ((WebView)localObject).setVisibility(4);
    ((WebView)localObject).setWebChromeClient(localh);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.d
 * JD-Core Version:    0.6.2
 */