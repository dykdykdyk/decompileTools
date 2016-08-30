package com.tencent.wxop.stat.a;

import org.json.JSONArray;
import org.json.JSONObject;

public final class b
{
  public String a;
  public JSONArray b;
  public JSONObject c = null;

  public b()
  {
  }

  public b(String paramString)
  {
    this.a = paramString;
    this.c = new JSONObject();
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
    {
      return false;
      if (this == paramObject)
        return true;
    }
    while (!(paramObject instanceof b));
    paramObject = (b)paramObject;
    return toString().equals(paramObject.toString());
  }

  public final int hashCode()
  {
    return toString().hashCode();
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append(this.a).append(",");
    if (this.b != null)
      localStringBuilder.append(this.b.toString());
    if (this.c != null)
      localStringBuilder.append(this.c.toString());
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.a.b
 * JD-Core Version:    0.6.2
 */