package com.amap.api.services.poisearch;

import com.amap.api.services.core.i;

public class PoiSearch$Query
  implements Cloneable
{
  private String a;
  private String b;
  private String c;
  private int d = 0;
  private int e = 20;
  private String f = "zh-CN";
  private boolean g = false;
  private boolean h = false;

  public PoiSearch$Query(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }

  public PoiSearch$Query(String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }

  private String a()
  {
    return "";
  }

  public Query clone()
  {
    try
    {
      super.clone();
      Query localQuery = new Query(this.a, this.b, this.c);
      localQuery.setPageNum(this.d);
      localQuery.setPageSize(this.e);
      localQuery.setQueryLanguage(this.f);
      localQuery.setCityLimit(this.g);
      localQuery.requireSubPois(this.h);
      return localQuery;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        i.a(localCloneNotSupportedException, "PoiSearch", "queryclone");
    }
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
      paramObject = (Query)paramObject;
      if (this.b == null)
      {
        if (paramObject.b != null)
          return false;
      }
      else if (!this.b.equals(paramObject.b))
        return false;
      if (this.c == null)
      {
        if (paramObject.c != null)
          return false;
      }
      else if (!this.c.equals(paramObject.c))
        return false;
      if (this.f == null)
      {
        if (paramObject.f != null)
          return false;
      }
      else if (!this.f.equals(paramObject.f))
        return false;
      if (this.d != paramObject.d)
        return false;
      if (this.e != paramObject.e)
        return false;
      if (this.a == null)
      {
        if (paramObject.a != null)
          return false;
      }
      else if (!this.a.equals(paramObject.a))
        return false;
      if (this.g != paramObject.g)
        return false;
    }
    while (this.h == paramObject.h);
    return false;
  }

  public String getCategory()
  {
    if ((this.b == null) || (this.b.equals("00")) || (this.b.equals("00|")))
      return a();
    return this.b;
  }

  public String getCity()
  {
    return this.c;
  }

  public boolean getCityLimit()
  {
    return this.g;
  }

  public int getPageNum()
  {
    return this.d;
  }

  public int getPageSize()
  {
    return this.e;
  }

  protected String getQueryLanguage()
  {
    return this.f;
  }

  public String getQueryString()
  {
    return this.a;
  }

  public int hashCode()
  {
    int m = 1231;
    int i1 = 0;
    int i;
    int j;
    label26: int k;
    label37: label44: int n;
    label54: int i2;
    int i3;
    if (this.b == null)
    {
      i = 0;
      if (this.c != null)
        break label129;
      j = 0;
      if (!this.g)
        break label140;
      k = 1231;
      if (!this.h)
        break label147;
      if (this.f != null)
        break label155;
      n = 0;
      i2 = this.d;
      i3 = this.e;
      if (this.a != null)
        break label167;
    }
    while (true)
    {
      return (((n + ((k + (j + (i + 31) * 31) * 31) * 31 + m) * 31) * 31 + i2) * 31 + i3) * 31 + i1;
      i = this.b.hashCode();
      break;
      label129: j = this.c.hashCode();
      break label26;
      label140: k = 1237;
      break label37;
      label147: m = 1237;
      break label44;
      label155: n = this.f.hashCode();
      break label54;
      label167: i1 = this.a.hashCode();
    }
  }

  public boolean isRequireSubPois()
  {
    return this.h;
  }

  public boolean queryEquals(Query paramQuery)
  {
    if (paramQuery == null);
    do
    {
      return false;
      if (paramQuery == this)
        return true;
    }
    while ((!PoiSearch.a(paramQuery.a, this.a)) || (!PoiSearch.a(paramQuery.b, this.b)) || (!PoiSearch.a(paramQuery.f, this.f)) || (!PoiSearch.a(paramQuery.c, this.c)) || (paramQuery.g != this.g) || (paramQuery.e != this.e));
    return true;
  }

  public void requireSubPois(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public void setCityLimit(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public void setPageNum(int paramInt)
  {
    this.d = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    if (this.e <= 0)
    {
      this.e = 20;
      return;
    }
    if (this.e > 100)
    {
      this.e = 100;
      return;
    }
    this.e = paramInt;
  }

  protected void setQueryLanguage(String paramString)
  {
    if ("en".equals(paramString))
    {
      this.f = "en";
      return;
    }
    this.f = "zh-CN";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.PoiSearch.Query
 * JD-Core Version:    0.6.2
 */