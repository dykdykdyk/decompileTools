package com.amap.api.services.district;

import android.content.Context;
import android.os.Handler;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.j;
import com.amap.api.services.core.q;
import com.amap.api.services.core.t;
import java.util.HashMap;

public class DistrictSearch
{
  private static HashMap<Integer, DistrictResult> f;
  private Context a;
  private DistrictSearchQuery b;
  private DistrictSearch.OnDistrictSearchListener c;
  private DistrictSearchQuery d;
  private int e;
  private Handler g;

  public DistrictSearch(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.g = t.a();
  }

  private void a(DistrictResult paramDistrictResult)
  {
    f = new HashMap();
    if ((this.b == null) || (paramDistrictResult == null));
    while ((this.e <= 0) || (this.e <= this.b.getPageNum()))
      return;
    f.put(Integer.valueOf(this.b.getPageNum()), paramDistrictResult);
  }

  private boolean a()
  {
    return this.b != null;
  }

  private boolean a(int paramInt)
  {
    return (paramInt < this.e) && (paramInt >= 0);
  }

  private DistrictResult b()
    throws AMapException
  {
    Object localObject = new DistrictResult();
    q.a(this.a);
    if (!a())
      this.b = new DistrictSearchQuery();
    ((DistrictResult)localObject).setQuery(this.b.clone());
    if (!this.b.weakEquals(this.d))
    {
      this.e = 0;
      this.d = this.b.clone();
      if (f != null)
        f.clear();
    }
    if (this.e == 0)
    {
      localObject = (DistrictResult)new j(this.a, this.b.clone()).a();
      if (localObject != null);
    }
    DistrictResult localDistrictResult;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return localObject;
              this.e = ((DistrictResult)localObject).getPageCount();
              a((DistrictResult)localObject);
              return localObject;
              localDistrictResult = getPageLocal(this.b.getPageNum());
              localObject = localDistrictResult;
            }
            while (localDistrictResult != null);
            localDistrictResult = (DistrictResult)new j(this.a, this.b.clone()).a();
            localObject = localDistrictResult;
          }
          while (this.b == null);
          localObject = localDistrictResult;
        }
        while (localDistrictResult == null);
        localObject = localDistrictResult;
      }
      while (this.e <= 0);
      localObject = localDistrictResult;
    }
    while (this.e <= this.b.getPageNum());
    f.put(Integer.valueOf(this.b.getPageNum()), localDistrictResult);
    return localDistrictResult;
  }

  protected DistrictResult getPageLocal(int paramInt)
    throws AMapException
  {
    if (!a(paramInt))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    return (DistrictResult)f.get(Integer.valueOf(paramInt));
  }

  public DistrictSearchQuery getQuery()
  {
    return this.b;
  }

  public void searchDistrictAnsy()
  {
    searchDistrictAsyn();
  }

  public void searchDistrictAsyn()
  {
    new DistrictSearch.1(this).start();
  }

  public void setOnDistrictSearchListener(DistrictSearch.OnDistrictSearchListener paramOnDistrictSearchListener)
  {
    this.c = paramOnDistrictSearchListener;
  }

  public void setQuery(DistrictSearchQuery paramDistrictSearchQuery)
  {
    this.b = paramDistrictSearchQuery;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.district.DistrictSearch
 * JD-Core Version:    0.6.2
 */