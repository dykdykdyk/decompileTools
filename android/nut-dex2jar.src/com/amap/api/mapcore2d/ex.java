package com.amap.api.mapcore2d;

import java.net.Proxy;

public class ex
{
  private static ex a;

  public static ex a()
  {
    if (a == null)
      a = new ex();
    return a;
  }

  protected fd a(fb paramfb, boolean paramBoolean)
    throws da
  {
    try
    {
      b(paramfb);
      if (paramfb.d == null);
      for (Proxy localProxy = null; ; localProxy = paramfb.d)
        return new ey(paramfb.b, paramfb.c, localProxy, paramBoolean).a(paramfb.h(), paramfb.b(), paramfb.i());
    }
    catch (da paramfb)
    {
      throw paramfb;
    }
    catch (Throwable paramfb)
    {
      paramfb.printStackTrace();
    }
    throw new da("未知的错误");
  }

  public byte[] a(fb paramfb)
    throws da
  {
    try
    {
      paramfb = a(paramfb, false);
      if (paramfb != null)
        return paramfb.a;
    }
    catch (da paramfb)
    {
      throw paramfb;
    }
    catch (Throwable paramfb)
    {
      dq.a(paramfb, "BaseNetManager", "makeSyncPostRequest");
      throw new da("未知的错误");
    }
    return null;
  }

  protected void b(fb paramfb)
    throws da
  {
    if (paramfb == null)
      throw new da("requeust is null");
    if ((paramfb.d() == null) || ("".equals(paramfb.d())))
      throw new da("request url is empty");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ex
 * JD-Core Version:    0.6.2
 */