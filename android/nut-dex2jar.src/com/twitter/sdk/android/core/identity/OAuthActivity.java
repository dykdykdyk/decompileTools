package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService.OAuthApi;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.m;
import com.twitter.sdk.android.core.v;
import io.fabric.sdk.android.r;

public class OAuthActivity extends Activity
  implements f
{
  c a;
  private ProgressBar b;
  private WebView c;

  public final void a(int paramInt, Intent paramIntent)
  {
    setResult(paramInt, paramIntent);
    finish();
  }

  public void onBackPressed()
  {
    this.a.a(0, new TwitterAuthException("Authorization failed, request was canceled."));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(m.tw__activity_oauth);
    this.b = ((ProgressBar)findViewById(l.tw__spinner));
    this.c = ((WebView)findViewById(l.tw__web_view));
    boolean bool;
    if (paramBundle != null)
    {
      bool = paramBundle.getBoolean("progress", false);
      paramBundle = this.b;
      if (!bool)
        break label231;
    }
    label231: for (int i = 0; ; i = 8)
    {
      paramBundle.setVisibility(i);
      paramBundle = v.e();
      this.a = new c(this.b, this.c, (TwitterAuthConfig)getIntent().getParcelableExtra("auth_config"), new OAuth1aService(paramBundle, paramBundle.f(), new com.twitter.sdk.android.core.internal.f()), this);
      Object localObject = this.a;
      io.fabric.sdk.android.f.b().a("Twitter", "Obtaining request token to start the sign in flow");
      paramBundle = ((c)localObject).e;
      localObject = new d((c)localObject);
      TwitterAuthConfig localTwitterAuthConfig = paramBundle.b.d;
      String str = paramBundle.c.a + "/oauth/request_token";
      paramBundle.a.getTempToken(OAuth1aService.a(localTwitterAuthConfig, null, OAuth1aService.a(localTwitterAuthConfig), "POST", str, null), paramBundle.a((com.twitter.sdk.android.core.f)localObject));
      return;
      bool = true;
      break;
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    if (this.b.getVisibility() == 0)
      paramBundle.putBoolean("progress", true);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.OAuthActivity
 * JD-Core Version:    0.6.2
 */