package com.amap.api.services.core;

import android.content.Context;
import java.util.List;

public class bq
{
  private bj a;

  public bq(Context paramContext)
  {
    this.a = new bj(paramContext, bp.c());
  }

  private br a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 0:
      return new bm();
    case 1:
      return new bo();
    case 2:
    }
    return new bl();
  }

  private void a(bs parambs, br parambr)
  {
    parambr.a(parambs);
    this.a.a(parambr);
  }

  private void b(bs parambs, br parambr)
  {
    String str = br.a(parambs.b());
    Object localObject = this.a.b(str, parambr, true);
    if ((localObject == null) || (((List)localObject).size() == 0))
    {
      parambr.a(parambs);
      this.a.a(parambr, true);
      return;
    }
    localObject = (bs)((List)localObject).get(0);
    if (parambs.a() == 0)
      ((bs)localObject).b(((bs)localObject).d() + 1);
    while (true)
    {
      parambr.a((bs)localObject);
      this.a.b(str, parambr);
      return;
      ((bs)localObject).b(0);
    }
  }

  private void c(String paramString, int paramInt)
  {
    paramString = br.a(paramString);
    br localbr = a(paramInt);
    this.a.a(paramString, localbr);
  }

  public List<bs> a(int paramInt1, int paramInt2)
  {
    try
    {
      Object localObject = a(paramInt2);
      String str = br.a(paramInt1);
      localObject = this.a.c(str, (bk)localObject);
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      av.a(localThrowable, "LogDB", "ByState");
      localThrowable.printStackTrace();
    }
    return null;
  }

  public void a(bs parambs, int paramInt)
  {
    try
    {
      br localbr = a(paramInt);
      localbr.a(parambs);
      parambs = br.a(parambs.b());
      this.a.b(parambs, localbr);
      return;
    }
    catch (Throwable parambs)
    {
      av.a(parambs, "LogDB", "updateLogInfo");
      parambs.printStackTrace();
    }
  }

  public void a(String paramString, int paramInt)
  {
    try
    {
      c(paramString, paramInt);
      return;
    }
    catch (Throwable paramString)
    {
      av.a(paramString, "LogDB", "delLog");
      paramString.printStackTrace();
    }
  }

  public void b(bs parambs, int paramInt)
  {
    br localbr;
    try
    {
      localbr = a(paramInt);
      switch (paramInt)
      {
      case 0:
        a(parambs, localbr);
        return;
      case 1:
      case 2:
      }
    }
    catch (Throwable parambs)
    {
      parambs.printStackTrace();
      return;
    }
    b(parambs, localbr);
    return;
    b(parambs, localbr);
    return;
  }

  public void b(String paramString, int paramInt)
  {
    try
    {
      c(paramString, paramInt);
      return;
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bq
 * JD-Core Version:    0.6.2
 */