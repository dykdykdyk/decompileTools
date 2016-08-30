package com.twitter.sdk.android.core;

import com.google.gson.annotations.SerializedName;

public class q<T extends c>
{

  @SerializedName("auth_token")
  public final T a;

  @SerializedName("id")
  public final long b;

  public q(T paramT, long paramLong)
  {
    this.a = paramT;
    this.b = paramLong;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      paramObject = (q)paramObject;
      if (this.b != paramObject.b)
        return false;
      if (this.a == null)
        break;
    }
    while (this.a.equals(paramObject.a));
    while (true)
    {
      return false;
      if (paramObject.a == null)
        break;
    }
  }

  public int hashCode()
  {
    if (this.a != null);
    for (int i = this.a.hashCode(); ; i = 0)
      return i * 31 + (int)(this.b ^ this.b >>> 32);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.q
 * JD-Core Version:    0.6.2
 */