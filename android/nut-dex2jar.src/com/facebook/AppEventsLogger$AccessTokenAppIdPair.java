package com.facebook;

import com.facebook.internal.Utility;
import java.io.Serializable;

class AppEventsLogger$AccessTokenAppIdPair
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final String accessToken;
  private final String applicationId;

  AppEventsLogger$AccessTokenAppIdPair(Session paramSession)
  {
    this(paramSession.getAccessToken(), paramSession.getApplicationId());
  }

  AppEventsLogger$AccessTokenAppIdPair(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (Utility.isNullOrEmpty(paramString1))
      str = null;
    this.accessToken = str;
    this.applicationId = paramString2;
  }

  private Object writeReplace()
  {
    return new AppEventsLogger.AccessTokenAppIdPair.SerializationProxyV1(this.accessToken, this.applicationId, null);
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AccessTokenAppIdPair));
    do
    {
      return false;
      paramObject = (AccessTokenAppIdPair)paramObject;
    }
    while ((!Utility.areObjectsEqual(paramObject.accessToken, this.accessToken)) || (!Utility.areObjectsEqual(paramObject.applicationId, this.applicationId)));
    return true;
  }

  String getAccessToken()
  {
    return this.accessToken;
  }

  String getApplicationId()
  {
    return this.applicationId;
  }

  public int hashCode()
  {
    int j = 0;
    int i;
    if (this.accessToken == null)
    {
      i = 0;
      if (this.applicationId != null)
        break label33;
    }
    while (true)
    {
      return i ^ j;
      i = this.accessToken.hashCode();
      break;
      label33: j = this.applicationId.hashCode();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AppEventsLogger.AccessTokenAppIdPair
 * JD-Core Version:    0.6.2
 */