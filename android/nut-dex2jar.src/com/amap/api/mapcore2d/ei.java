package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.List;

public class ei
{
  private eb a;

  public ei(Context paramContext)
  {
    this.a = new eb(paramContext, eh.c());
  }

  private ej a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 0:
      return new ee();
    case 1:
      return new eg();
    case 2:
    }
    return new ed();
  }

  private void a(ek paramek, ej paramej)
  {
    paramej.a(paramek);
    this.a.a(paramej);
  }

  private void b(ek paramek, ej paramej)
  {
    String str = ej.a(paramek.b());
    Object localObject = this.a.b(str, paramej, true);
    if ((localObject == null) || (((List)localObject).size() == 0))
    {
      paramej.a(paramek);
      this.a.a(paramej, true);
      return;
    }
    localObject = (ek)((List)localObject).get(0);
    if (paramek.a() == 0)
      ((ek)localObject).b(((ek)localObject).d() + 1);
    while (true)
    {
      paramej.a((ek)localObject);
      this.a.b(str, paramej);
      return;
      ((ek)localObject).b(0);
    }
  }

  private void c(String paramString, int paramInt)
  {
    paramString = ej.a(paramString);
    ej localej = a(paramInt);
    this.a.a(paramString, localej);
  }

  public List<ek> a(int paramInt1, int paramInt2)
  {
    try
    {
      Object localObject = a(paramInt2);
      String str = ej.a(paramInt1);
      localObject = this.a.c(str, (ec)localObject);
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      dn.a(localThrowable, "LogDB", "ByState");
      localThrowable.printStackTrace();
    }
    return null;
  }

  public void a(ek paramek, int paramInt)
  {
    try
    {
      ej localej = a(paramInt);
      localej.a(paramek);
      paramek = ej.a(paramek.b());
      this.a.b(paramek, localej);
      return;
    }
    catch (Throwable paramek)
    {
      dn.a(paramek, "LogDB", "updateLogInfo");
      paramek.printStackTrace();
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
      dn.a(paramString, "LogDB", "delLog");
      paramString.printStackTrace();
    }
  }

  public void b(ek paramek, int paramInt)
  {
    ej localej;
    try
    {
      localej = a(paramInt);
      switch (paramInt)
      {
      case 0:
        a(paramek, localej);
        return;
      case 1:
      case 2:
      }
    }
    catch (Throwable paramek)
    {
      paramek.printStackTrace();
      return;
    }
    b(paramek, localej);
    return;
    b(paramek, localej);
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
 * Qualified Name:     com.amap.api.mapcore2d.ei
 * JD-Core Version:    0.6.2
 */