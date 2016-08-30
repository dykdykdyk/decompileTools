package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.net.Proxy;

public class fa extends ex
{
  private static fa a;
  private fg b;
  private Handler c;

  private fa(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean);
    try
    {
      this.b = fg.a(paramInt);
      if (Looper.myLooper() == null)
      {
        this.c = new fa.a(Looper.getMainLooper(), null);
        return;
      }
      this.c = new fa.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      dn.a(localThrowable, "NetManger", "NetManger1");
      localThrowable.printStackTrace();
    }
  }

  public static fa a(boolean paramBoolean)
  {
    return a(paramBoolean, 5);
  }

  private static fa a(boolean paramBoolean, int paramInt)
  {
    try
    {
      if (a == null)
        a = new fa(paramBoolean, paramInt);
      while (true)
      {
        fa localfa = a;
        return localfa;
        if ((paramBoolean) && (a.b == null))
          a.b = fg.a(paramInt);
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

  private void a(da paramda, fc paramfc)
  {
    ff localff = new ff();
    localff.a = paramda;
    localff.b = paramfc;
    paramda = Message.obtain();
    paramda.obj = localff;
    paramda.what = 1;
    this.c.sendMessage(paramda);
  }

  private void a(fd paramfd, fc paramfc)
  {
    paramfc.a(paramfd.b, paramfd.a);
    paramfd = new ff();
    paramfd.b = paramfc;
    paramfc = Message.obtain();
    paramfc.obj = paramfd;
    paramfc.what = 0;
    this.c.sendMessage(paramfc);
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
      paramfb.printStackTrace();
      dn.b().b(paramfb, "NetManager", "makeSyncPostRequest");
      throw new da("未知的错误");
    }
    return null;
  }

  public fd b(fb paramfb, boolean paramBoolean)
    throws da
  {
    try
    {
      b(paramfb);
      if (paramfb.d == null);
      for (Proxy localProxy = null; ; localProxy = paramfb.d)
        return new ey(paramfb.b, paramfb.c, localProxy, paramBoolean).a(paramfb.d(), paramfb.b(), paramfb.c());
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

  public byte[] c(fb paramfb)
    throws da
  {
    try
    {
      paramfb = b(paramfb, false);
      if (paramfb != null)
        return paramfb.a;
    }
    catch (da paramfb)
    {
      throw paramfb;
    }
    catch (Throwable paramfb)
    {
      throw new da("未知的错误");
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.fa
 * JD-Core Version:    0.6.2
 */