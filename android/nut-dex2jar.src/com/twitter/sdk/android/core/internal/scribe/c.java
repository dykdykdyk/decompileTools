package com.twitter.sdk.android.core.internal.scribe;

import com.google.gson.annotations.SerializedName;

public final class c
{

  @SerializedName("client")
  public final String a;

  @SerializedName("page")
  public final String b;

  @SerializedName("section")
  public final String c;

  @SerializedName("component")
  public final String d;

  @SerializedName("element")
  public final String e;

  @SerializedName("action")
  public final String f;

  public c(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      paramObject = (c)paramObject;
      if (this.f != null)
      {
        if (this.f.equals(paramObject.f));
      }
      else
        while (paramObject.f != null)
          return false;
      if (this.a != null)
      {
        if (this.a.equals(paramObject.a));
      }
      else
        while (paramObject.a != null)
          return false;
      if (this.d != null)
      {
        if (this.d.equals(paramObject.d));
      }
      else
        while (paramObject.d != null)
          return false;
      if (this.e != null)
      {
        if (this.e.equals(paramObject.e));
      }
      else
        while (paramObject.e != null)
          return false;
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

  public final int hashCode()
  {
    int i1 = 0;
    int i;
    int j;
    label33: int k;
    label48: int m;
    if (this.a != null)
    {
      i = this.a.hashCode();
      if (this.b == null)
        break label131;
      j = this.b.hashCode();
      if (this.c == null)
        break label136;
      k = this.c.hashCode();
      if (this.d == null)
        break label141;
      m = this.d.hashCode();
      label64: if (this.e == null)
        break label147;
    }
    label131: label136: label141: label147: for (int n = this.e.hashCode(); ; n = 0)
    {
      if (this.f != null)
        i1 = this.f.hashCode();
      return (n + (m + (k + (j + i * 31) * 31) * 31) * 31) * 31 + i1;
      i = 0;
      break;
      j = 0;
      break label33;
      k = 0;
      break label48;
      m = 0;
      break label64;
    }
  }

  public final String toString()
  {
    return "client=" + this.a + ", page=" + this.b + ", section=" + this.c + ", component=" + this.d + ", element=" + this.e + ", action=" + this.f;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.c
 * JD-Core Version:    0.6.2
 */