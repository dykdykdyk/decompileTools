package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.c;
import java.util.HashMap;
import java.util.Map;

public class OAuth2Token extends c
  implements Parcelable
{
  public static final Parcelable.Creator<OAuth2Token> CREATOR = new d();

  @SerializedName("access_token")
  final String b;

  @SerializedName("token_type")
  private final String c;

  private OAuth2Token(Parcel paramParcel)
  {
    this.c = paramParcel.readString();
    this.b = paramParcel.readString();
  }

  public Map<String, String> a(TwitterAuthConfig paramTwitterAuthConfig, String paramString1, String paramString2, Map<String, String> paramMap)
  {
    paramTwitterAuthConfig = new HashMap();
    paramTwitterAuthConfig.put("Authorization", "Bearer " + this.b);
    return paramTwitterAuthConfig;
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
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      paramObject = (OAuth2Token)paramObject;
      if (this.b != null)
      {
        if (this.b.equals(paramObject.b));
      }
      else
        while (paramObject.b != null)
          return false;
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
    int j = 0;
    if (this.c != null);
    for (int i = this.c.hashCode(); ; i = 0)
    {
      if (this.b != null)
        j = this.b.hashCode();
      return i * 31 + j;
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.OAuth2Token
 * JD-Core Version:    0.6.2
 */