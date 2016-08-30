package com.amap.api.services.busline;

import com.amap.api.services.core.i;

public class BusStationQuery
{
  private String a;
  private String b;
  private int c = 10;
  private int d = 0;

  public BusStationQuery(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
    if (!a())
      throw new IllegalArgumentException("Empty query");
  }

  private boolean a()
  {
    return !i.a(this.a);
  }

  protected BusStationQuery clone()
  {
    BusStationQuery localBusStationQuery = new BusStationQuery(this.a, this.b);
    localBusStationQuery.setPageNumber(this.d);
    localBusStationQuery.setPageSize(this.c);
    return localBusStationQuery;
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
        paramObject = (BusStationQuery)paramObject;
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
    int j = 0;
    int i;
    int k;
    int m;
    if (this.b == null)
    {
      i = 0;
      k = this.d;
      m = this.c;
      if (this.a != null)
        break label61;
    }
    while (true)
    {
      return (((i + 31) * 31 + k) * 31 + m) * 31 + j;
      i = this.b.hashCode();
      break;
      label61: j = this.a.hashCode();
    }
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
    int i = 20;
    if (paramInt > 20)
      paramInt = i;
    while (true)
    {
      i = paramInt;
      if (paramInt <= 0)
        i = 10;
      this.c = i;
      return;
    }
  }

  public void setQueryString(String paramString)
  {
    this.a = paramString;
  }

  protected boolean weakEquals(BusStationQuery paramBusStationQuery)
  {
    if (this == paramBusStationQuery);
    do
    {
      do
      {
        return true;
        if (paramBusStationQuery == null)
          return false;
        if (this.b == null)
        {
          if (paramBusStationQuery.b != null)
            return false;
        }
        else if (!this.b.equals(paramBusStationQuery.b))
          return false;
        if (this.c != paramBusStationQuery.c)
          return false;
        if (this.a != null)
          break;
      }
      while (paramBusStationQuery.a == null);
      return false;
    }
    while (this.a.equals(paramBusStationQuery.a));
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.busline.BusStationQuery
 * JD-Core Version:    0.6.2
 */