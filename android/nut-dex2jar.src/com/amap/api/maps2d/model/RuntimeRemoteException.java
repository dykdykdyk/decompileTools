package com.amap.api.maps2d.model;

import android.os.RemoteException;

public final class RuntimeRemoteException extends RuntimeException
{
  public RuntimeRemoteException(RemoteException paramRemoteException)
  {
    super(paramRemoteException);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.RuntimeRemoteException
 * JD-Core Version:    0.6.2
 */