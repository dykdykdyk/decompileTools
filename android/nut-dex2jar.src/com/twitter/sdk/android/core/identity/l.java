package com.twitter.sdk.android.core.identity;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.twitter.sdk.android.core.TwitterException;

final class l
{
  final ShareEmailClient a;
  final ResultReceiver b;

  public l(ShareEmailClient paramShareEmailClient, ResultReceiver paramResultReceiver)
  {
    this.a = paramShareEmailClient;
    this.b = paramResultReceiver;
  }

  public final void a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("msg", "The user chose not to share their email address at this time.");
    this.b.send(0, localBundle);
  }

  final void a(TwitterException paramTwitterException)
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("error", paramTwitterException);
    this.b.send(1, localBundle);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.l
 * JD-Core Version:    0.6.2
 */