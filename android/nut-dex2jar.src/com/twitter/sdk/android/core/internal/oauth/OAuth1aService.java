package com.twitter.sdk.android.core.internal.oauth;

import android.net.Uri;
import android.net.Uri.Builder;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.v;
import io.fabric.sdk.android.services.network.q;
import java.net.URI;
import java.security.SecureRandom;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import javax.net.ssl.SSLSocketFactory;
import retrofit.RestAdapter;
import retrofit.client.Response;

public final class OAuth1aService extends f
{
  public OAuth1aService.OAuthApi a = (OAuth1aService.OAuthApi)this.e.create(OAuth1aService.OAuthApi.class);

  public OAuth1aService(v paramv, SSLSocketFactory paramSSLSocketFactory, com.twitter.sdk.android.core.internal.f paramf)
  {
    super(paramv, paramSSLSocketFactory, paramf);
  }

  public static OAuthResponse a(String paramString)
  {
    paramString = q.a(paramString, false);
    String str1 = (String)paramString.get("oauth_token");
    String str2 = (String)paramString.get("oauth_token_secret");
    String str3 = (String)paramString.get("screen_name");
    if (paramString.containsKey("user_id"));
    for (long l = Long.parseLong((String)paramString.get("user_id")); (str1 == null) || (str2 == null); l = 0L)
      return null;
    return new OAuthResponse(new TwitterAuthToken(str1, str2), str3, l);
  }

  public static String a(TwitterAuthConfig paramTwitterAuthConfig)
  {
    return Uri.parse("twittersdk://callback").buildUpon().appendQueryParameter("version", "1.3.1.37").appendQueryParameter("app", paramTwitterAuthConfig.a).build().toString();
  }

  public static String a(TwitterAuthConfig paramTwitterAuthConfig, TwitterAuthToken paramTwitterAuthToken, String paramString1, String paramString2, String paramString3, Map<String, String> paramMap)
  {
    paramTwitterAuthConfig = new b(paramTwitterAuthConfig, paramTwitterAuthToken, paramString1, paramString2, paramString3, paramMap);
    paramTwitterAuthToken = String.valueOf(System.nanoTime()) + String.valueOf(Math.abs(b.a.nextLong()));
    paramString1 = Long.toString(System.currentTimeMillis() / 1000L);
    paramString3 = URI.create(paramTwitterAuthConfig.f);
    paramString2 = q.a(paramString3, true);
    if (paramTwitterAuthConfig.g != null)
      paramString2.putAll(paramTwitterAuthConfig.g);
    if (paramTwitterAuthConfig.d != null)
      paramString2.put("oauth_callback", paramTwitterAuthConfig.d);
    paramString2.put("oauth_consumer_key", paramTwitterAuthConfig.b.a);
    paramString2.put("oauth_nonce", paramTwitterAuthToken);
    paramString2.put("oauth_signature_method", "HMAC-SHA1");
    paramString2.put("oauth_timestamp", paramString1);
    if ((paramTwitterAuthConfig.c != null) && (paramTwitterAuthConfig.c.b != null))
      paramString2.put("oauth_token", paramTwitterAuthConfig.c.b);
    paramString2.put("oauth_version", "1.0");
    paramString3 = paramString3.getScheme() + "://" + paramString3.getHost() + paramString3.getPath();
    paramString3 = paramTwitterAuthConfig.a(paramTwitterAuthConfig.e.toUpperCase(Locale.ENGLISH) + '&' + q.b(paramString3) + '&' + b.a(paramString2));
    paramString2 = new StringBuilder("OAuth");
    b.a(paramString2, "oauth_callback", paramTwitterAuthConfig.d);
    b.a(paramString2, "oauth_consumer_key", paramTwitterAuthConfig.b.a);
    b.a(paramString2, "oauth_nonce", paramTwitterAuthToken);
    b.a(paramString2, "oauth_signature", paramString3);
    b.a(paramString2, "oauth_signature_method", "HMAC-SHA1");
    b.a(paramString2, "oauth_timestamp", paramString1);
    if (paramTwitterAuthConfig.c != null);
    for (paramTwitterAuthConfig = paramTwitterAuthConfig.c.b; ; paramTwitterAuthConfig = null)
    {
      b.a(paramString2, "oauth_token", paramTwitterAuthConfig);
      b.a(paramString2, "oauth_version", "1.0");
      return paramString2.substring(0, paramString2.length() - 1);
    }
  }

  public final com.twitter.sdk.android.core.f<Response> a(com.twitter.sdk.android.core.f<OAuthResponse> paramf)
  {
    return new c(this, paramf);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.OAuth1aService
 * JD-Core Version:    0.6.2
 */