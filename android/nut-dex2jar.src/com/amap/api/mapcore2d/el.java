package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.List;

public class el
{
  private eb a;
  private Context b;

  public el(Context paramContext, boolean paramBoolean)
  {
    this.b = paramContext;
    this.a = a(this.b, paramBoolean);
  }

  private eb a(Context paramContext, boolean paramBoolean)
  {
    try
    {
      paramContext = new eb(paramContext, eh.c());
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      if (!paramBoolean)
      {
        dn.a(paramContext, "SDKDB", "getDB");
        return null;
      }
      paramContext.printStackTrace();
    }
    return null;
  }

  public List<di> a()
  {
    try
    {
      Object localObject = new em();
      String str = em.c();
      localObject = this.a.b(str, (ec)localObject, true);
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }

  public void a(di paramdi)
  {
    if (paramdi == null)
      return;
    em localem;
    try
    {
      if (this.a == null)
        this.a = a(this.b, false);
      localem = new em();
      localem.a(paramdi);
      paramdi = em.a(paramdi.a());
      List localList = this.a.c(paramdi, new em());
      if ((localList == null) || (localList.size() == 0))
      {
        this.a.a(localem);
        return;
      }
    }
    catch (Throwable paramdi)
    {
      dn.a(paramdi, "SDKDB", "insert");
      paramdi.printStackTrace();
      return;
    }
    this.a.b(paramdi, localem);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.el
 * JD-Core Version:    0.6.2
 */