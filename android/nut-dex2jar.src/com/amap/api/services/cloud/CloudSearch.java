package com.amap.api.services.cloud;

import android.content.Context;
import android.os.Handler;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.f;
import com.amap.api.services.core.g;
import com.amap.api.services.core.t;
import com.amap.api.services.core.z;
import java.util.ArrayList;
import java.util.HashMap;

public class CloudSearch
{
  private Context a;
  private CloudSearch.OnCloudSearchListener b;
  private CloudSearch.Query c;
  private int d;
  private HashMap<Integer, CloudResult> e;
  private Handler f;

  public CloudSearch(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.f = t.a();
  }

  private CloudResult a(CloudSearch.Query paramQuery)
    throws AMapException
  {
    CloudResult localCloudResult2 = null;
    CloudResult localCloudResult1 = localCloudResult2;
    try
    {
      if (!paramQuery.queryEquals(this.c))
      {
        localCloudResult1 = localCloudResult2;
        this.d = 0;
        localCloudResult1 = localCloudResult2;
        this.c = paramQuery.clone();
        localCloudResult1 = localCloudResult2;
        if (this.e != null)
        {
          localCloudResult1 = localCloudResult2;
          this.e.clear();
        }
      }
      localCloudResult1 = localCloudResult2;
      g localg;
      if (this.d == 0)
      {
        localCloudResult1 = localCloudResult2;
        localg = new g(this.a, paramQuery);
        localCloudResult1 = localCloudResult2;
        localg.a(CloudSearch.Query.a(paramQuery));
        localCloudResult1 = localCloudResult2;
        localg.b(CloudSearch.Query.b(paramQuery));
        localCloudResult1 = localCloudResult2;
        localCloudResult2 = CloudResult.a(localg, (ArrayList)localg.a());
        localCloudResult1 = localCloudResult2;
      }
      try
      {
        a(localCloudResult2, paramQuery);
        return localCloudResult2;
        localCloudResult1 = localCloudResult2;
        localCloudResult2 = getPageLocal(paramQuery.getPageNum());
        localCloudResult1 = localCloudResult2;
        if (localCloudResult2 != null)
          break label231;
        localCloudResult1 = localCloudResult2;
        localg = new g(this.a, paramQuery);
        localCloudResult1 = localCloudResult2;
        localg.a(CloudSearch.Query.a(paramQuery));
        localCloudResult1 = localCloudResult2;
        localg.b(CloudSearch.Query.b(paramQuery));
        localCloudResult1 = localCloudResult2;
        localCloudResult2 = CloudResult.a(localg, (ArrayList)localg.a());
        localCloudResult1 = localCloudResult2;
        this.e.put(Integer.valueOf(CloudSearch.Query.a(paramQuery)), localCloudResult2);
        return localCloudResult2;
      }
      catch (Throwable paramQuery)
      {
      }
      label215: if ((paramQuery instanceof AMapException))
        throw ((AMapException)paramQuery);
      paramQuery.printStackTrace();
      label231: return localCloudResult1;
    }
    catch (Throwable paramQuery)
    {
      break label215;
    }
  }

  private void a(CloudResult paramCloudResult, CloudSearch.Query paramQuery)
  {
    this.e = new HashMap();
    if (this.d > 0)
      this.e.put(Integer.valueOf(paramQuery.getPageNum()), paramCloudResult);
  }

  private boolean a(int paramInt)
  {
    return (paramInt <= this.d) && (paramInt > 0);
  }

  private CloudItemDetail b(String paramString1, String paramString2)
    throws AMapException
  {
    if ((paramString1 == null) || (paramString1.trim().equals("")))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    if ((paramString2 == null) || (paramString2.trim().equals("")))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    try
    {
      paramString1 = new z(paramString1, paramString2);
      paramString1 = (CloudItemDetail)new f(this.a, paramString1).a();
      return paramString1;
    }
    catch (Throwable paramString1)
    {
      if ((paramString1 instanceof AMapException))
        throw ((AMapException)paramString1);
      paramString1.printStackTrace();
    }
    return null;
  }

  private static boolean c(String paramString1, String paramString2)
  {
    if ((paramString1 == null) && (paramString2 == null))
      return true;
    if ((paramString1 != null) && (paramString2 != null))
      return paramString1.equals(paramString2);
    return false;
  }

  protected CloudResult getPageLocal(int paramInt)
  {
    if (!a(paramInt))
      throw new IllegalArgumentException("page out of range");
    return (CloudResult)this.e.get(Integer.valueOf(paramInt));
  }

  public void searchCloudAsyn(CloudSearch.Query paramQuery)
  {
    new CloudSearch.1(this, paramQuery).start();
  }

  public void searchCloudDetailAsyn(String paramString1, String paramString2)
  {
    new CloudSearch.2(this, paramString1, paramString2).start();
  }

  public void setOnCloudSearchListener(CloudSearch.OnCloudSearchListener paramOnCloudSearchListener)
  {
    this.b = paramOnCloudSearchListener;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.cloud.CloudSearch
 * JD-Core Version:    0.6.2
 */