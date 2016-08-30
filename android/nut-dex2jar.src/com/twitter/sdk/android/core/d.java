package com.twitter.sdk.android.core;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import java.util.HashMap;
import java.util.Map;

public final class d
  implements JsonDeserializer<c>, JsonSerializer<c>
{
  static final Map<String, Class<? extends c>> a;
  private final Gson b = new Gson();

  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put("oauth1a", TwitterAuthToken.class);
    a.put("oauth2", OAuth2Token.class);
    a.put("guest", GuestAuthToken.class);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.d
 * JD-Core Version:    0.6.2
 */