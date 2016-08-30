package com.twitter.sdk.android.core.identity;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService.OAuthApi;
import com.twitter.sdk.android.core.v;
import io.fabric.sdk.android.r;

final class c
  implements j
{
  final f a;
  TwitterAuthToken b;
  final WebView c;
  final TwitterAuthConfig d;
  final OAuth1aService e;
  private final ProgressBar f;

  c(ProgressBar paramProgressBar, WebView paramWebView, TwitterAuthConfig paramTwitterAuthConfig, OAuth1aService paramOAuth1aService, f paramf)
  {
    this.f = paramProgressBar;
    this.c = paramWebView;
    this.d = paramTwitterAuthConfig;
    this.e = paramOAuth1aService;
    this.a = paramf;
  }

  private void a()
  {
    this.c.stopLoading();
    b();
  }

  private void b()
  {
    this.f.setVisibility(8);
  }

  protected final void a(int paramInt, TwitterAuthException paramTwitterAuthException)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("auth_error", paramTwitterAuthException);
    this.a.a(paramInt, localIntent);
  }

  public final void a(Bundle paramBundle)
  {
    io.fabric.sdk.android.f.b().a("Twitter", "OAuth web view completed successfully");
    String str1 = paramBundle.getString("oauth_verifier");
    if (str1 != null)
    {
      io.fabric.sdk.android.f.b().a("Twitter", "Converting the request token to an access token.");
      paramBundle = this.e;
      e locale = new e(this);
      Object localObject = this.b;
      String str2 = paramBundle.c.a + "/oauth/access_token";
      localObject = OAuth1aService.a(paramBundle.b.d, (TwitterAuthToken)localObject, null, "POST", str2, null);
      paramBundle.a.getAccessToken((String)localObject, str1, paramBundle.a(locale));
    }
    while (true)
    {
      a();
      return;
      io.fabric.sdk.android.f.b().c("Twitter", "Failed to get authorization, bundle incomplete " + paramBundle, null);
      a(1, new TwitterAuthException("Failed to get authorization, bundle incomplete"));
    }
  }

  public final void a(WebView paramWebView)
  {
    b();
    paramWebView.setVisibility(0);
  }

  public final void a(q paramq)
  {
    io.fabric.sdk.android.f.b().c("Twitter", "OAuth web view completed with an error", paramq);
    a(1, new TwitterAuthException("OAuth web view completed with an error"));
    a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.c
 * JD-Core Version:    0.6.2
 */