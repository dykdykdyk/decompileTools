package com.amap.api.services.core;

import android.content.Context;
import java.util.List;

public class bv
{
  private bj a;
  private Context b;

  public bv(Context paramContext)
  {
    this.b = paramContext;
    this.a = a(this.b);
  }

  private bj a(Context paramContext)
  {
    try
    {
      paramContext = new bj(paramContext, bp.c());
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      av.a(paramContext, "UpdateLogDB", "getDB");
      paramContext.printStackTrace();
    }
    return null;
  }

  public bx a()
  {
    try
    {
      if (this.a == null)
        this.a = a(this.b);
      Object localObject = this.a.c("1=1", new bw());
      if (((List)localObject).size() > 0)
      {
        localObject = (bx)((List)localObject).get(0);
        return localObject;
      }
    }
    catch (Throwable localThrowable)
    {
      av.a(localThrowable, "UpdateLogDB", "getUpdateLog");
      localThrowable.printStackTrace();
    }
    return null;
  }

  public void a(bx parambx)
  {
    if (parambx == null)
      return;
    bw localbw;
    try
    {
      if (this.a == null)
        this.a = a(this.b);
      localbw = new bw();
      localbw.a(parambx);
      parambx = this.a.c("1=1", new bw());
      if ((parambx == null) || (parambx.size() == 0))
      {
        this.a.a(localbw);
        return;
      }
    }
    catch (Throwable parambx)
    {
      av.a(parambx, "UpdateLogDB", "updateLog");
      parambx.printStackTrace();
      return;
    }
    this.a.b("1=1", localbw);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bv
 * JD-Core Version:    0.6.2
 */