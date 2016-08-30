package com.amap.api.services.core;

import java.net.Proxy;

public class cf
{
  protected cl a(cj paramcj, boolean paramBoolean)
    throws ai
  {
    try
    {
      c(paramcj);
      if (paramcj.g == null);
      for (Proxy localProxy = null; ; localProxy = paramcj.g)
        return new cg(paramcj.e, paramcj.f, localProxy, paramBoolean).a(paramcj.n(), paramcj.c(), paramcj.o());
    }
    catch (ai paramcj)
    {
      throw paramcj;
    }
    catch (Throwable paramcj)
    {
      paramcj.printStackTrace();
    }
    throw new ai("未知的错误");
  }

  public byte[] a(cj paramcj)
    throws ai
  {
    try
    {
      paramcj = a(paramcj, true);
      if (paramcj != null)
        return paramcj.a;
    }
    catch (ai paramcj)
    {
      throw paramcj;
    }
    catch (Throwable paramcj)
    {
      throw new ai("未知的错误");
    }
    return null;
  }

  public byte[] b(cj paramcj)
    throws ai
  {
    try
    {
      paramcj = a(paramcj, false);
      if (paramcj != null)
        return paramcj.a;
    }
    catch (ai paramcj)
    {
      throw paramcj;
    }
    catch (Throwable paramcj)
    {
      ay.a(paramcj, "BaseNetManager", "makeSyncPostRequest");
      throw new ai("未知的错误");
    }
    return null;
  }

  protected void c(cj paramcj)
    throws ai
  {
    if (paramcj == null)
      throw new ai("requeust is null");
    if ((paramcj.g() == null) || ("".equals(paramcj.g())))
      throw new ai("request url is empty");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.cf
 * JD-Core Version:    0.6.2
 */