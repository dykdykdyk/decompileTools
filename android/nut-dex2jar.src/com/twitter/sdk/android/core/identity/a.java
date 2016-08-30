package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.f;
import com.twitter.sdk.android.core.y;

public abstract class a
{
  protected final int a;
  final TwitterAuthConfig b;
  private final f<y> c;

  a(TwitterAuthConfig paramTwitterAuthConfig, f<y> paramf, int paramInt)
  {
    this.b = paramTwitterAuthConfig;
    this.c = paramf;
    this.a = paramInt;
  }

  public final boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.a != paramInt1)
      return false;
    f localf = this.c;
    if (localf != null)
    {
      if (paramInt2 != -1)
        break label89;
      String str1 = paramIntent.getStringExtra("tk");
      String str2 = paramIntent.getStringExtra("ts");
      String str3 = paramIntent.getStringExtra("screen_name");
      long l = paramIntent.getLongExtra("user_id", 0L);
      localf.success(new y(new TwitterAuthToken(str1, str2), l, str3), null);
    }
    while (true)
    {
      return true;
      label89: if ((paramIntent != null) && (paramIntent.hasExtra("auth_error")))
        localf.a((TwitterAuthException)paramIntent.getSerializableExtra("auth_error"));
      else
        localf.a(new TwitterAuthException("Authorize failed."));
    }
  }

  public abstract boolean a(Activity paramActivity);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.a
 * JD-Core Version:    0.6.2
 */