package com.amap.api.services.cloud;

import com.amap.api.services.core.g;
import java.util.ArrayList;

public final class CloudResult
{
  private int a;
  private ArrayList<CloudItem> b;
  private g c;
  private int d;

  private CloudResult(g paramg, ArrayList<CloudItem> paramArrayList)
  {
    this.c = paramg;
    this.d = paramg.i();
    this.a = a(this.d);
    this.b = paramArrayList;
  }

  private int a(int paramInt)
  {
    int i = this.c.h();
    return (paramInt + i - 1) / i;
  }

  static CloudResult a(g paramg, ArrayList<CloudItem> paramArrayList)
  {
    return new CloudResult(paramg, paramArrayList);
  }

  public final CloudSearch.SearchBound getBound()
  {
    return this.c.k();
  }

  public final ArrayList<CloudItem> getClouds()
  {
    return this.b;
  }

  public final int getPageCount()
  {
    return this.a;
  }

  public final CloudSearch.Query getQuery()
  {
    return this.c.j();
  }

  public final int getTotalCount()
  {
    return this.d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.CloudResult
 * JD-Core Version:    0.6.2
 */