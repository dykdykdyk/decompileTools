package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class TwitterAuthConfig
  implements Parcelable
{
  public static final Parcelable.Creator<TwitterAuthConfig> CREATOR = new t();
  public final String a;
  public final String b;

  private TwitterAuthConfig(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
  }

  public TwitterAuthConfig(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null))
      throw new IllegalArgumentException("TwitterAuthConfig must not be created with null consumer key or secret.");
    this.a = a(paramString1);
    this.b = a(paramString2);
  }

  public static int a()
  {
    return 140;
  }

  private static String a(String paramString)
  {
    if (paramString != null)
      return paramString.trim();
    return null;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.TwitterAuthConfig
 * JD-Core Version:    0.6.2
 */