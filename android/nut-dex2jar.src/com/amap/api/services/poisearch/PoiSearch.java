package com.amap.api.services.poisearch;

import android.content.Context;
import android.os.Handler;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.core.aa;
import com.amap.api.services.core.i;
import com.amap.api.services.core.q;
import com.amap.api.services.core.t;
import java.util.ArrayList;
import java.util.HashMap;

public class PoiSearch
{
  public static final String CHINESE = "zh-CN";
  public static final String ENGLISH = "en";
  private static HashMap<Integer, PoiResult> i;
  private PoiSearch.SearchBound a;
  private PoiSearch.Query b;
  private Context c;
  private PoiSearch.OnPoiSearchListener d;
  private String e = "zh-CN";
  private PoiSearch.Query f;
  private PoiSearch.SearchBound g;
  private int h;
  private Handler j = null;

  public PoiSearch(Context paramContext, PoiSearch.Query paramQuery)
  {
    this.c = paramContext.getApplicationContext();
    setQuery(paramQuery);
    this.j = t.a();
  }

  private void a(PoiResult paramPoiResult)
  {
    i = new HashMap();
    if ((this.b == null) || (paramPoiResult == null));
    while ((this.h <= 0) || (this.h <= this.b.getPageNum()))
      return;
    i.put(Integer.valueOf(this.b.getPageNum()), paramPoiResult);
  }

  private boolean a()
  {
    return (!i.a(PoiSearch.Query.a(this.b))) || (!i.a(PoiSearch.Query.b(this.b)));
  }

  private boolean a(int paramInt)
  {
    return (paramInt <= this.h) && (paramInt >= 0);
  }

  private boolean b()
  {
    PoiSearch.SearchBound localSearchBound = getBound();
    if (localSearchBound == null);
    while (!localSearchBound.getShape().equals("Bound"))
      return false;
    return true;
  }

  private static boolean b(String paramString1, String paramString2)
  {
    if ((paramString1 == null) && (paramString2 == null))
      return true;
    if ((paramString1 != null) && (paramString2 != null))
      return paramString1.equals(paramString2);
    return false;
  }

  public PoiSearch.SearchBound getBound()
  {
    return this.a;
  }

  public String getLanguage()
  {
    return this.e;
  }

  protected PoiResult getPageLocal(int paramInt)
  {
    if (!a(paramInt))
      throw new IllegalArgumentException("page out of range");
    return (PoiResult)i.get(Integer.valueOf(paramInt));
  }

  public PoiSearch.Query getQuery()
  {
    return this.b;
  }

  public PoiResult searchPOI()
    throws AMapException
  {
    q.a(this.c);
    if ((!b()) && (!a()))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    this.b.setQueryLanguage(this.e);
    if (((!this.b.queryEquals(this.f)) && (this.a == null)) || ((!this.b.queryEquals(this.f)) && (!this.a.equals(this.g))))
    {
      this.h = 0;
      this.f = this.b.clone();
      if (this.a != null)
        this.g = this.a.clone();
      if (i != null)
        i.clear();
    }
    Object localObject = null;
    if (this.a != null)
      localObject = this.a.clone();
    if (this.h == 0)
    {
      localObject = new d(this.c, new aa(this.b.clone(), (PoiSearch.SearchBound)localObject));
      ((d)localObject).a(PoiSearch.Query.c(this.b));
      ((d)localObject).b(PoiSearch.Query.d(this.b));
      localObject = PoiResult.a((d)localObject, (ArrayList)((d)localObject).a());
      a((PoiResult)localObject);
      return localObject;
    }
    PoiResult localPoiResult = getPageLocal(this.b.getPageNum());
    if (localPoiResult == null)
    {
      localObject = new d(this.c, new aa(this.b.clone(), (PoiSearch.SearchBound)localObject));
      ((d)localObject).a(PoiSearch.Query.c(this.b));
      ((d)localObject).b(PoiSearch.Query.d(this.b));
      localObject = PoiResult.a((d)localObject, (ArrayList)((d)localObject).a());
      i.put(Integer.valueOf(PoiSearch.Query.c(this.b)), localObject);
      return localObject;
    }
    return localPoiResult;
  }

  public void searchPOIAsyn()
  {
    new PoiSearch.1(this).start();
  }

  public PoiItem searchPOIId(String paramString)
    throws AMapException
  {
    q.a(this.c);
    return (PoiItem)new c(this.c, paramString).a();
  }

  public void searchPOIIdAsyn(String paramString)
  {
    new PoiSearch.2(this, paramString).start();
  }

  public void setBound(PoiSearch.SearchBound paramSearchBound)
  {
    this.a = paramSearchBound;
  }

  public void setLanguage(String paramString)
  {
    if ("en".equals(paramString))
    {
      this.e = "en";
      return;
    }
    this.e = "zh-CN";
  }

  public void setOnPoiSearchListener(PoiSearch.OnPoiSearchListener paramOnPoiSearchListener)
  {
    this.d = paramOnPoiSearchListener;
  }

  public void setQuery(PoiSearch.Query paramQuery)
  {
    this.b = paramQuery;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.PoiSearch
 * JD-Core Version:    0.6.2
 */