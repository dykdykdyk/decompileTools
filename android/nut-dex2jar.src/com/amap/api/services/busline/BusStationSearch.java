package com.amap.api.services.busline;

import android.content.Context;
import android.os.Handler;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.d;
import com.amap.api.services.core.q;
import com.amap.api.services.core.t;
import java.util.ArrayList;

public class BusStationSearch
{
  private Context a;
  private BusStationSearch.OnBusStationSearchListener b;
  private BusStationQuery c;
  private BusStationQuery d;
  private ArrayList<BusStationResult> e = new ArrayList();
  private int f;
  private Handler g;

  public BusStationSearch(Context paramContext, BusStationQuery paramBusStationQuery)
  {
    this.a = paramContext.getApplicationContext();
    this.c = paramBusStationQuery;
    this.g = t.a();
  }

  private void a(BusStationResult paramBusStationResult)
  {
    this.e = new ArrayList();
    int i = 0;
    while (i <= this.f)
    {
      this.e.add(null);
      i += 1;
    }
    if (this.f > 0)
      this.e.set(this.c.getPageNumber(), paramBusStationResult);
  }

  private boolean a(int paramInt)
  {
    return (paramInt <= this.f) && (paramInt >= 0);
  }

  private BusStationResult b(int paramInt)
  {
    if (!a(paramInt))
      throw new IllegalArgumentException("page out of range");
    return (BusStationResult)this.e.get(paramInt);
  }

  public BusStationQuery getQuery()
  {
    return this.c;
  }

  public BusStationResult searchBusStation()
    throws AMapException
  {
    q.a(this.a);
    if (!this.c.weakEquals(this.d))
    {
      this.d = this.c.clone();
      this.f = 0;
      if (this.e != null)
        this.e.clear();
    }
    if (this.f == 0)
    {
      localObject = new d(this.a, this.c);
      localObject = BusStationResult.a((d)localObject, (ArrayList)((d)localObject).a());
      this.f = ((BusStationResult)localObject).getPageCount();
      a((BusStationResult)localObject);
    }
    BusStationResult localBusStationResult;
    do
    {
      return localObject;
      localBusStationResult = b(this.c.getPageNumber());
      localObject = localBusStationResult;
    }
    while (localBusStationResult != null);
    Object localObject = new d(this.a, this.c);
    localObject = BusStationResult.a((d)localObject, (ArrayList)((d)localObject).a());
    this.e.set(this.c.getPageNumber(), localObject);
    return localObject;
  }

  public void searchBusStationAsyn()
  {
    new Thread(new BusStationSearch.1(this)).start();
  }

  public void setOnBusStationSearchListener(BusStationSearch.OnBusStationSearchListener paramOnBusStationSearchListener)
  {
    this.b = paramOnBusStationSearchListener;
  }

  public void setQuery(BusStationQuery paramBusStationQuery)
  {
    if (!paramBusStationQuery.weakEquals(this.c))
      this.c = paramBusStationQuery;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.busline.BusStationSearch
 * JD-Core Version:    0.6.2
 */