package com.amap.api.services.busline;

import com.amap.api.services.core.i;

public class BusLineQuery
{
  private String a;
  private String b;
  private int c = 10;
  private int d = 0;
  private BusLineQuery.SearchType e;

  public BusLineQuery(String paramString1, BusLineQuery.SearchType paramSearchType, String paramString2)
  {
    this.a = paramString1;
    this.e = paramSearchType;
    this.b = paramString2;
    if (!a())
      throw new IllegalArgumentException("Empty query");
  }

  private boolean a()
  {
    return !i.a(this.a);
  }

  protected BusLineQuery clone()
  {
    BusLineQuery localBusLineQuery = new BusLineQuery(this.a, this.e, this.b);
    localBusLineQuery.setPageNumber(this.d);
    localBusLineQuery.setPageSize(this.c);
    return localBusLineQuery;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        paramObject = (BusLineQuery)paramObject;
        if (this.e != paramObject.e)
          return false;
        if (this.b == null)
        {
          if (paramObject.b != null)
            return false;
        }
        else if (!this.b.equals(paramObject.b))
          return false;
        if (this.d != paramObject.d)
          return false;
        if (this.c != paramObject.c)
          return false;
        if (this.a != null)
          break;
      }
      while (paramObject.a == null);
      return false;
    }
    while (this.a.equals(paramObject.a));
    return false;
  }

  public BusLineQuery.SearchType getCategory()
  {
    return this.e;
  }

  public String getCity()
  {
    return this.b;
  }

  public int getPageNumber()
  {
    return this.d;
  }

  public int getPageSize()
  {
    return this.c;
  }

  public String getQueryString()
  {
    return this.a;
  }

  public int hashCode()
  {
    int k = 0;
    int i;
    int j;
    label20: int m;
    int n;
    if (this.e == null)
    {
      i = 0;
      if (this.b != null)
        break label77;
      j = 0;
      m = this.d;
      n = this.c;
      if (this.a != null)
        break label88;
    }
    while (true)
    {
      return (((j + (i + 31) * 31) * 31 + m) * 31 + n) * 31 + k;
      i = this.e.hashCode();
      break;
      label77: j = this.b.hashCode();
      break label20;
      label88: k = this.a.hashCode();
    }
  }

  public void setCategory(BusLineQuery.SearchType paramSearchType)
  {
    this.e = paramSearchType;
  }

  public void setCity(String paramString)
  {
    this.b = paramString;
  }

  public void setPageNumber(int paramInt)
  {
    this.d = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    this.c = paramInt;
  }

  public void setQueryString(String paramString)
  {
    this.a = paramString;
  }

  protected boolean weakEquals(BusLineQuery paramBusLineQuery)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramBusLineQuery.getQueryString().equals(this.a))
    {
      bool1 = bool2;
      if (paramBusLineQuery.getCity().equals(this.b))
      {
        bool1 = bool2;
        if (paramBusLineQuery.getPageSize() == this.c)
        {
          bool1 = bool2;
          if (paramBusLineQuery.getCategory().compareTo(this.e) == 0)
            bool1 = true;
        }
      }
    }
    return bool1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.busline.BusLineQuery
 * JD-Core Version:    0.6.2
 */