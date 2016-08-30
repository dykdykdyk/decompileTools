package com.amap.api.services.cloud;

import com.amap.api.services.core.i;

public class CloudSearch$Sortingrules
{
  public static final int DISTANCE = 1;
  public static final int WEIGHT = 0;
  private int a = 0;
  private String b;
  private boolean c = true;

  public CloudSearch$Sortingrules(int paramInt)
  {
    this.a = paramInt;
  }

  public CloudSearch$Sortingrules(String paramString, boolean paramBoolean)
  {
    this.b = paramString;
    this.c = paramBoolean;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      paramObject = (Sortingrules)paramObject;
      if (this.c != paramObject.c)
        return false;
      if (this.b == null)
      {
        if (paramObject.b != null)
          return false;
      }
      else if (!this.b.equals(paramObject.b))
        return false;
    }
    while (this.a == paramObject.a);
    return false;
  }

  public int hashCode()
  {
    int i;
    if (this.c)
    {
      i = 1231;
      if (this.b != null)
        break label45;
    }
    label45: for (int j = 0; ; j = this.b.hashCode())
    {
      return (j + (i + 31) * 31) * 31 + this.a;
      i = 1237;
      break;
    }
  }

  public String toString()
  {
    String str = "";
    if (i.a(this.b))
    {
      if (this.a == 0)
        str = "_weight";
      while (this.a != 1)
        return str;
      return "_distance";
    }
    if (this.c)
      return this.b + ":1";
    return this.b + ":0";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.CloudSearch.Sortingrules
 * JD-Core Version:    0.6.2
 */