package com.amap.api.mapcore2d;

import com.amap.api.maps2d.AMapException;

abstract class bu<T, V> extends fb
{
  protected T a;
  private int e = 1;
  private int f = 0;

  public bu()
  {
  }

  public bu(T paramT)
  {
    this();
    this.a = paramT;
  }

  private V b(byte[] paramArrayOfByte)
    throws AMapException
  {
    return a(paramArrayOfByte);
  }

  private V g()
    throws AMapException
  {
    try
    {
      Object localObject = b(e());
      return localObject;
    }
    catch (AMapException localAMapException)
    {
      f();
      throw new AMapException(localAMapException.getErrorMessage());
    }
  }

  public V a()
    throws AMapException
  {
    Object localObject = null;
    if (this.a != null)
      localObject = g();
    return localObject;
  }

  protected abstract V a(byte[] paramArrayOfByte)
    throws AMapException;

  protected byte[] e()
    throws AMapException
  {
    int i = 0;
    while (i < this.e)
      try
      {
        byte[] arrayOfByte = fa.a(false).c(this);
        return arrayOfByte;
      }
      catch (da localda)
      {
        i += 1;
        if (i < this.e)
          try
          {
            Thread.sleep(this.f * 1000);
            cz.a(localda, "ProtocalHandler", "getData");
          }
          catch (InterruptedException localInterruptedException)
          {
            throw new AMapException(localda.getMessage());
          }
        else
          throw new AMapException(localda.a());
      }
    return null;
  }

  protected V f()
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bu
 * JD-Core Version:    0.6.2
 */