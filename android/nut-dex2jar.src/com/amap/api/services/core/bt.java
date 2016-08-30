package com.amap.api.services.core;

import android.content.Context;
import java.util.List;

public class bt
{
  private bj a;
  private Context b;

  public bt(Context paramContext, boolean paramBoolean)
  {
    this.b = paramContext;
    this.a = a(this.b, paramBoolean);
  }

  private bj a(Context paramContext, boolean paramBoolean)
  {
    try
    {
      paramContext = new bj(paramContext, bp.c());
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      if (!paramBoolean)
      {
        av.a(paramContext, "SDKDB", "getDB");
        return null;
      }
      paramContext.printStackTrace();
    }
    return null;
  }

  public List<ar> a()
  {
    try
    {
      Object localObject = new bu();
      String str = bu.c();
      localObject = this.a.b(str, (bk)localObject, true);
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }

  public void a(ar paramar)
  {
    if (paramar == null)
      return;
    bu localbu;
    try
    {
      if (this.a == null)
        this.a = a(this.b, false);
      localbu = new bu();
      localbu.a(paramar);
      paramar = bu.a(paramar.a());
      List localList = this.a.c(paramar, new bu());
      if ((localList == null) || (localList.size() == 0))
      {
        this.a.a(localbu);
        return;
      }
    }
    catch (Throwable paramar)
    {
      av.a(paramar, "SDKDB", "insert");
      paramar.printStackTrace();
      return;
    }
    this.a.b(paramar, localbu);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bt
 * JD-Core Version:    0.6.2
 */