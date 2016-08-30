package com.amap.api.services.busline;

import android.content.Context;
import android.os.Handler;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.d;
import com.amap.api.services.core.q;
import com.amap.api.services.core.t;
import java.util.ArrayList;

public class BusLineSearch
{
  private Context a;
  private BusLineSearch.OnBusLineSearchListener b;
  private BusLineQuery c;
  private BusLineQuery d;
  private int e;
  private ArrayList<BusLineResult> f = new ArrayList();
  private Handler g = null;

  public BusLineSearch(Context paramContext, BusLineQuery paramBusLineQuery)
  {
    this.a = paramContext.getApplicationContext();
    this.c = paramBusLineQuery;
    this.d = paramBusLineQuery.clone();
    this.g = t.a();
  }

  private void a(BusLineResult paramBusLineResult)
  {
    this.f = new ArrayList();
    int i = 0;
    while (i < this.e)
    {
      this.f.add(null);
      i += 1;
    }
    if ((this.e >= 0) && (a(this.c.getPageNumber())))
      this.f.set(this.c.getPageNumber(), paramBusLineResult);
  }

  private boolean a(int paramInt)
  {
    return (paramInt < this.e) && (paramInt >= 0);
  }

  private BusLineResult b(int paramInt)
  {
    if (!a(paramInt))
      throw new IllegalArgumentException("page out of range");
    return (BusLineResult)this.f.get(paramInt);
  }

  public BusLineQuery getQuery()
  {
    return this.c;
  }

  public BusLineResult searchBusLine()
    throws AMapException
  {
    q.a(this.a);
    if (!this.c.weakEquals(this.d))
    {
      this.d = this.c.clone();
      this.e = 0;
      if (this.f != null)
        this.f.clear();
    }
    if (this.e == 0)
    {
      localObject = new d(this.a, this.c.clone());
      localObject = BusLineResult.a((d)localObject, (ArrayList)((d)localObject).a());
      this.e = ((BusLineResult)localObject).getPageCount();
      a((BusLineResult)localObject);
    }
    BusLineResult localBusLineResult;
    do
    {
      return localObject;
      localBusLineResult = b(this.c.getPageNumber());
      localObject = localBusLineResult;
    }
    while (localBusLineResult != null);
    Object localObject = new d(this.a, this.c);
    localObject = BusLineResult.a((d)localObject, (ArrayList)((d)localObject).a());
    this.f.set(this.c.getPageNumber(), localObject);
    return localObject;
  }

  public void searchBusLineAsyn()
  {
    new Thread(new BusLineSearch.1(this)).start();
  }

  public void setOnBusLineSearchListener(BusLineSearch.OnBusLineSearchListener paramOnBusLineSearchListener)
  {
    this.b = paramOnBusLineSearchListener;
  }

  public void setQuery(BusLineQuery paramBusLineQuery)
  {
    if (!this.c.weakEquals(paramBusLineQuery))
    {
      this.c = paramBusLineQuery;
      this.d = paramBusLineQuery.clone();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.busline.BusLineSearch
 * JD-Core Version:    0.6.2
 */