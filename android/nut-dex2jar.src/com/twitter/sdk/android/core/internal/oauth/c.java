package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.f;
import com.twitter.sdk.android.core.p;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import retrofit.client.Response;
import retrofit.mime.TypedInput;

final class c extends f<Response>
{
  c(OAuth1aService paramOAuth1aService, f paramf)
  {
  }

  public final void a(TwitterException paramTwitterException)
  {
    this.a.a(paramTwitterException);
  }

  public final void a(p<Response> paramp)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localObject = new BufferedReader(new InputStreamReader(((Response)paramp.a).getBody().in()));
      try
      {
        while (true)
        {
          paramp = ((BufferedReader)localObject).readLine();
          if (paramp == null)
            break;
          localStringBuilder.append(paramp);
        }
      }
      finally
      {
      }
      if (localObject != null);
      try
      {
        ((BufferedReader)localObject).close();
        throw paramp;
      }
      catch (IOException paramp)
      {
        this.a.a(new TwitterAuthException(paramp.getMessage(), paramp));
        return;
      }
      ((BufferedReader)localObject).close();
      paramp = localStringBuilder.toString();
      localObject = OAuth1aService.a(paramp);
      if (localObject == null)
      {
        this.a.a(new TwitterAuthException("Failed to parse auth response: " + paramp));
        return;
      }
      this.a.a(new p(localObject, null));
      return;
    }
    finally
    {
      while (true)
        Object localObject = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.c
 * JD-Core Version:    0.6.2
 */