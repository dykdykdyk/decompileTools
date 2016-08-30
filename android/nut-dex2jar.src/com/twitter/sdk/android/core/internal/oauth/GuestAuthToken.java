package com.twitter.sdk.android.core.internal.oauth;

import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.Map;

public class GuestAuthToken extends OAuth2Token
{

  @SerializedName("guest_token")
  private final String c;

  public final Map<String, String> a(TwitterAuthConfig paramTwitterAuthConfig, String paramString1, String paramString2, Map<String, String> paramMap)
  {
    paramTwitterAuthConfig = super.a(paramTwitterAuthConfig, paramString1, paramString2, paramMap);
    paramTwitterAuthConfig.put("x-guest-token", this.c);
    return paramTwitterAuthConfig;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      if (!super.equals(paramObject))
        return false;
      paramObject = (GuestAuthToken)paramObject;
      if (this.c == null)
        break;
    }
    while (this.c.equals(paramObject.c));
    while (true)
    {
      return false;
      if (paramObject.c == null)
        break;
    }
  }

  public int hashCode()
  {
    int j = super.hashCode();
    if (this.c != null);
    for (int i = this.c.hashCode(); ; i = 0)
      return i + j * 31;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.GuestAuthToken
 * JD-Core Version:    0.6.2
 */