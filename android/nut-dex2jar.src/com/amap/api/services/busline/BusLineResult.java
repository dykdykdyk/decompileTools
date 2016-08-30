package com.amap.api.services.busline;

import com.amap.api.services.core.SuggestionCity;
import com.amap.api.services.core.d;
import java.util.ArrayList;
import java.util.List;

public final class BusLineResult
{
  private int a;
  private ArrayList<BusLineItem> b = new ArrayList();
  private BusLineQuery c;
  private List<String> d = new ArrayList();
  private List<SuggestionCity> e = new ArrayList();

  private BusLineResult(d paramd, ArrayList<?> paramArrayList)
  {
    this.c = ((BusLineQuery)paramd.h());
    this.a = a(paramd.i());
    this.e = paramd.k();
    this.d = paramd.j();
    this.b = paramArrayList;
  }

  private int a(int paramInt)
  {
    int i = this.c.getPageSize();
    paramInt = (paramInt + i - 1) / i;
    if (paramInt > 30)
      return 30;
    return paramInt;
  }

  static BusLineResult a(d paramd, ArrayList<?> paramArrayList)
  {
    return new BusLineResult(paramd, paramArrayList);
  }

  public final List<BusLineItem> getBusLines()
  {
    return this.b;
  }

  public final int getPageCount()
  {
    return this.a;
  }

  public final BusLineQuery getQuery()
  {
    return this.c;
  }

  public final List<SuggestionCity> getSearchSuggestionCities()
  {
    return this.e;
  }

  public final List<String> getSearchSuggestionKeywords()
  {
    return this.d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.busline.BusLineResult
 * JD-Core Version:    0.6.2
 */