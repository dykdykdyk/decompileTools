package com.amap.api.services.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.net.Proxy;

public class ci extends cf
{
  private static ci a;
  private co b;
  private Handler c;

  private ci(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean);
    try
    {
      this.b = co.a(paramInt);
      if (Looper.myLooper() == null)
      {
        this.c = new ci.a(Looper.getMainLooper(), null);
        return;
      }
      this.c = new ci.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      av.a(localThrowable, "NetManger", "NetManger1");
      localThrowable.printStackTrace();
    }
  }

  public static ci a(boolean paramBoolean)
  {
    return a(paramBoolean, 5);
  }

  private static ci a(boolean paramBoolean, int paramInt)
  {
    try
    {
      if (a == null)
        a = new ci(paramBoolean, paramInt);
      while (true)
      {
        ci localci = a;
        return localci;
        if ((paramBoolean) && (a.b == null))
          a.b = co.a(paramInt);
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
    finally
    {
    }
  }

  private void a(ai paramai, ck paramck)
  {
    cn localcn = new cn();
    localcn.a = paramai;
    localcn.b = paramck;
    paramai = Message.obtain();
    paramai.obj = localcn;
    paramai.what = 1;
    this.c.sendMessage(paramai);
  }

  private void a(cl paramcl, ck paramck)
  {
    paramck.a(paramcl.b, paramcl.a);
    paramcl = new cn();
    paramcl.b = paramck;
    paramck = Message.obtain();
    paramck.obj = paramcl;
    paramck.what = 0;
    this.c.sendMessage(paramck);
  }

  public cl b(cj paramcj, boolean paramBoolean)
    throws ai
  {
    try
    {
      c(paramcj);
      if (paramcj.g == null);
      for (Proxy localProxy = null; ; localProxy = paramcj.g)
        return new cg(paramcj.e, paramcj.f, localProxy, paramBoolean).a(paramcj.g(), paramcj.c(), paramcj.b());
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
      paramcj.printStackTrace();
      av.b().b(paramcj, "NetManager", "makeSyncPostRequest");
      throw new ai("未知的错误");
    }
    return null;
  }

  public byte[] d(cj paramcj)
    throws ai
  {
    try
    {
      paramcj = b(paramcj, false);
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

  public byte[] e(cj paramcj)
    throws ai
  {
    try
    {
      paramcj = b(paramcj, true);
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
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ci
 * JD-Core Version:    0.6.2
 */