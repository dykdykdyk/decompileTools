package com.amap.api.services.core;

import android.content.Context;
import java.util.Map;

public abstract class a<T, V> extends cj
{
  public T a;
  protected int b = 1;
  protected String c = "";
  public Context d;
  private int h = 1;

  public a(Context paramContext, T paramT)
  {
    a(paramContext, paramT);
  }

  private void a(Context paramContext, T paramT)
  {
    this.d = paramContext;
    this.a = paramT;
    this.b = 1;
    d(ServiceSettings.getInstance().getSoTimeOut());
    c(ServiceSettings.getInstance().getConnectionTimeOut());
  }

  private V b(byte[] paramArrayOfByte)
    throws AMapException
  {
    return a(paramArrayOfByte);
  }

  private V e()
    throws AMapException
  {
    int i = 0;
    Object localObject1 = null;
    while (i < this.b)
    {
      Object localObject3 = localObject1;
      Object localObject4 = localObject1;
      try
      {
        j = ServiceSettings.getInstance().getProtocol();
        localObject3 = localObject1;
        localObject4 = localObject1;
        ci localci = ci.a(false);
        localObject3 = localObject1;
        localObject4 = localObject1;
        a(aq.a(this.d));
        localObject3 = localObject1;
        localObject4 = localObject1;
        localObject1 = b(a(j, localci, this));
        localObject3 = localObject1;
        localObject4 = localObject1;
        j = this.b;
        i = j;
      }
      catch (ai localai)
      {
        i.a(localai, "ProtocalHandler", "getDataMayThrowAMapCoreException");
        i += 1;
        if (i < this.b)
        {
          try
          {
            Thread.sleep(this.h * 1000);
            localObject2 = localObject3;
          }
          catch (InterruptedException localInterruptedException)
          {
            i.a(localObject2, "ProtocalHandler", "getDataMayThrowInterruptedException");
            if (("http连接失败 - ConnectionException".equals(localObject2.getMessage())) || ("socket 连接异常 - SocketException".equals(localObject2.getMessage())) || ("服务器连接失败 - UnknownServiceException".equals(localObject2.getMessage())))
              throw new AMapException("http或socket连接失败 - ConnectionException");
            throw new AMapException(localObject2.a());
          }
        }
        else
        {
          d();
          if (("http连接失败 - ConnectionException".equals(localObject2.getMessage())) || ("socket 连接异常 - SocketException".equals(localObject2.getMessage())) || ("未知的错误".equals(localObject2.a())) || ("服务器连接失败 - UnknownServiceException".equals(localObject2.getMessage())))
            throw new AMapException("http或socket连接失败 - ConnectionException");
          throw new AMapException(localObject2.a());
        }
      }
      catch (AMapException localAMapException)
      {
        i.a(localAMapException, "ProtocalHandler", "getDataMayThrowAMapException");
        int j = i + 1;
        i = j;
        Object localObject2 = localObject4;
        if (j >= this.b)
          throw new AMapException(localAMapException.getErrorMessage());
      }
      catch (Throwable localThrowable)
      {
        i.a(localThrowable, "ProtocalHandler", "getDataMayThrowAMapCoreException");
        throw new AMapException("未知错误");
      }
    }
    return localThrowable;
  }

  public V a()
    throws AMapException
  {
    if (this.a != null)
      return e();
    return null;
  }

  public abstract V a(String paramString)
    throws AMapException;

  protected V a(byte[] paramArrayOfByte)
    throws AMapException
  {
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, "utf-8");
      if ((paramArrayOfByte == null) || (paramArrayOfByte.equals("")))
        return null;
    }
    catch (Exception paramArrayOfByte)
    {
      while (true)
      {
        i.a(paramArrayOfByte, "ProtocalHandler", "loadData");
        paramArrayOfByte = null;
      }
      i.b(paramArrayOfByte);
    }
    return a(paramArrayOfByte);
  }

  protected byte[] a(int paramInt, ci paramci, cj paramcj)
    throws ai
  {
    byte[] arrayOfByte = null;
    if (paramInt == 1)
      arrayOfByte = paramci.b(paramcj);
    while (paramInt != 2)
      return arrayOfByte;
    return paramci.a(paramcj);
  }

  public Map<String, String> b()
  {
    return null;
  }

  public Map<String, String> c()
  {
    return null;
  }

  protected V d()
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.a
 * JD-Core Version:    0.6.2
 */