package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.List;

public class en
{
  private eb a;
  private Context b;

  public en(Context paramContext)
  {
    this.b = paramContext;
    this.a = a(this.b);
  }

  private eb a(Context paramContext)
  {
    try
    {
      paramContext = new eb(paramContext, eh.c());
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dn.a(paramContext, "UpdateLogDB", "getDB");
      paramContext.printStackTrace();
    }
    return null;
  }

  public ep a()
  {
    try
    {
      if (this.a == null)
        this.a = a(this.b);
      Object localObject = this.a.c("1=1", new eo());
      if (((List)localObject).size() > 0)
      {
        localObject = (ep)((List)localObject).get(0);
        return localObject;
      }
    }
    catch (Throwable localThrowable)
    {
      dn.a(localThrowable, "UpdateLogDB", "getUpdateLog");
      localThrowable.printStackTrace();
    }
    return null;
  }

  public void a(ep paramep)
  {
    if (paramep == null)
      return;
    eo localeo;
    try
    {
      if (this.a == null)
        this.a = a(this.b);
      localeo = new eo();
      localeo.a(paramep);
      paramep = this.a.c("1=1", new eo());
      if ((paramep == null) || (paramep.size() == 0))
      {
        this.a.a(localeo);
        return;
      }
    }
    catch (Throwable paramep)
    {
      dn.a(paramep, "UpdateLogDB", "updateLog");
      paramep.printStackTrace();
      return;
    }
    this.a.b("1=1", localeo);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.en
 * JD-Core Version:    0.6.2
 */