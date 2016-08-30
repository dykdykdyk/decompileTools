package com.twitter.sdk.android.core.identity;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.p;
import io.fabric.sdk.android.r;

final class m extends com.twitter.sdk.android.core.f<com.twitter.sdk.android.core.a.f>
{
  m(l paraml)
  {
  }

  public final void a(TwitterException paramTwitterException)
  {
    io.fabric.sdk.android.f.b().c("Twitter", "Failed to get email address.", paramTwitterException);
    this.a.a(new TwitterException("Failed to get email address."));
  }

  public final void a(p<com.twitter.sdk.android.core.a.f> paramp)
  {
    l locall = this.a;
    paramp = (com.twitter.sdk.android.core.a.f)paramp.a;
    if (paramp.a == null)
    {
      locall.a(new TwitterException("Your application may not have access to email addresses or the user may not have an email address. To request access, please visit https://support.twitter.com/forms/platform."));
      return;
    }
    if ("".equals(paramp.a))
    {
      locall.a(new TwitterException("This user does not have an email address."));
      return;
    }
    paramp = paramp.a;
    Bundle localBundle = new Bundle();
    localBundle.putString("email", paramp);
    locall.b.send(-1, localBundle);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.m
 * JD-Core Version:    0.6.2
 */