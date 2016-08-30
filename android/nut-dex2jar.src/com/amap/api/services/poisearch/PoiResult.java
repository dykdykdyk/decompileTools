package com.amap.api.services.poisearch;

import com.amap.api.services.core.PoiItem;
import com.amap.api.services.core.SuggestionCity;
import java.util.ArrayList;
import java.util.List;

public final class PoiResult
{
  private int a;
  private ArrayList<PoiItem> b = new ArrayList();
  private d c;

  private PoiResult(d paramd, ArrayList<PoiItem> paramArrayList)
  {
    this.c = paramd;
    this.a = a(paramd.i());
    this.b = paramArrayList;
  }

  private int a(int paramInt)
  {
    int i = this.c.h();
    paramInt = (paramInt + i - 1) / i;
    if (paramInt > 30)
      return 30;
    return paramInt;
  }

  static PoiResult a(d paramd, ArrayList<PoiItem> paramArrayList)
  {
    return new PoiResult(paramd, paramArrayList);
  }

  public final PoiSearch.SearchBound getBound()
  {
    return this.c.k();
  }

  public final int getPageCount()
  {
    return this.a;
  }

  public final ArrayList<PoiItem> getPois()
  {
    return this.b;
  }

  public final PoiSearch.Query getQuery()
  {
    return this.c.j();
  }

  public final List<SuggestionCity> getSearchSuggestionCitys()
  {
    return this.c.m();
  }

  public final List<String> getSearchSuggestionKeywords()
  {
    return this.c.l();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.PoiResult
 * JD-Core Version:    0.6.2
 */