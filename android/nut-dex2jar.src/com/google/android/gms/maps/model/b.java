package com.google.android.gms.maps.model;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.maps.model.a.d;

public final class b
{
  public static d a;

  public static a a()
  {
    try
    {
      a locala = new a(b().a(0.0F));
      return locala;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public static a a(int paramInt)
  {
    try
    {
      a locala = new a(b().a(paramInt));
      return locala;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public static a a(Bitmap paramBitmap)
  {
    try
    {
      paramBitmap = new a(b().a(paramBitmap));
      return paramBitmap;
    }
    catch (RemoteException paramBitmap)
    {
    }
    throw new RuntimeRemoteException(paramBitmap);
  }

  private static d b()
  {
    return (d)com.google.android.gms.common.internal.b.a(a, "IBitmapDescriptorFactory is not initialized");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.b
 * JD-Core Version:    0.6.2
 */