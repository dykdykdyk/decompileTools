package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import java.util.HashMap;
import java.util.Map;

public class TwitterAuthToken extends c
  implements Parcelable
{
  public static final Parcelable.Creator<TwitterAuthToken> CREATOR = new u();

  @SerializedName("token")
  public final String b;

  @SerializedName("secret")
  public final String c;

  private TwitterAuthToken(Parcel paramParcel)
  {
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
  }

  public TwitterAuthToken(String paramString1, String paramString2)
  {
    this.b = paramString1;
    this.c = paramString2;
  }

  public final Map<String, String> a(TwitterAuthConfig paramTwitterAuthConfig, String paramString1, String paramString2, Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("Authorization", OAuth1aService.a(paramTwitterAuthConfig, this, null, paramString1, paramString2, paramMap));
    return localHashMap;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (!(paramObject instanceof TwitterAuthToken))
        return false;
      paramObject = (TwitterAuthToken)paramObject;
      if (this.c != null)
      {
        if (this.c.equals(paramObject.c));
      }
      else
        while (paramObject.c != null)
          return false;
      if (this.b == null)
        break;
    }
    while (this.b.equals(paramObject.b));
    while (true)
    {
      return false;
      if (paramObject.b == null)
        break;
    }
  }

  public int hashCode()
  {
    int j = 0;
    if (this.b != null);
    for (int i = this.b.hashCode(); ; i = 0)
    {
      if (this.c != null)
        j = this.c.hashCode();
      return i * 31 + j;
    }
  }

  public String toString()
  {
    return "token=" + this.b + ",secret=" + this.c;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.TwitterAuthToken
 * JD-Core Version:    0.6.2
 */