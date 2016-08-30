package com.twitter.sdk.android.core;

import com.google.gson.annotations.SerializedName;

public class y extends q<TwitterAuthToken>
{

  @SerializedName("user_name")
  public final String c;

  public y(TwitterAuthToken paramTwitterAuthToken, long paramLong, String paramString)
  {
    super(paramTwitterAuthToken, paramLong);
    this.c = paramString;
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
      paramObject = (y)paramObject;
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
 * Qualified Name:     com.twitter.sdk.android.core.y
 * JD-Core Version:    0.6.2
 */