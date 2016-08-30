package com.twitter.sdk.android.core.internal.scribe;

import com.google.gson.annotations.SerializedName;

public class g
{

  @SerializedName("event_namespace")
  private final c a;

  @SerializedName("ts")
  private final String b;

  @SerializedName("format_version")
  private final String c;

  @SerializedName("_category_")
  private final String d;

  public g(String paramString, c paramc, long paramLong)
  {
    this.d = paramString;
    this.a = paramc;
    this.b = String.valueOf(paramLong);
    this.c = "2";
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      paramObject = (g)paramObject;
      if (this.d != null)
      {
        if (this.d.equals(paramObject.d));
      }
      else
        while (paramObject.d != null)
          return false;
      if (this.a != null)
      {
        if (this.a.equals(paramObject.a));
      }
      else
        while (paramObject.a != null)
          return false;
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
    int m = 0;
    int i;
    int j;
    if (this.a != null)
    {
      i = this.a.hashCode();
      if (this.b == null)
        break label87;
      j = this.b.hashCode();
      label33: if (this.c == null)
        break label92;
    }
    label87: label92: for (int k = this.c.hashCode(); ; k = 0)
    {
      if (this.d != null)
        m = this.d.hashCode();
      return (k + (j + i * 31) * 31) * 31 + m;
      i = 0;
      break;
      j = 0;
      break label33;
    }
  }

  public String toString()
  {
    return "event_namespace=" + this.a + ", ts=" + this.b + ", format_version=" + this.c + ", _category_=" + this.d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.g
 * JD-Core Version:    0.6.2
 */