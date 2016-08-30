package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class b
{
  static com.google.android.gms.maps.a.a a;

  private static com.google.android.gms.maps.a.a a()
  {
    return (com.google.android.gms.maps.a.a)com.google.android.gms.common.internal.b.a(a, "CameraUpdateFactory is not initialized");
  }

  public static a a(float paramFloat)
  {
    try
    {
      a locala = new a(a().a(paramFloat));
      return locala;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public static a a(CameraPosition paramCameraPosition)
  {
    try
    {
      paramCameraPosition = new a(a().a(paramCameraPosition));
      return paramCameraPosition;
    }
    catch (RemoteException paramCameraPosition)
    {
    }
    throw new RuntimeRemoteException(paramCameraPosition);
  }

  public static a a(LatLngBounds paramLatLngBounds)
  {
    try
    {
      paramLatLngBounds = new a(a().a(paramLatLngBounds, 10));
      return paramLatLngBounds;
    }
    catch (RemoteException paramLatLngBounds)
    {
    }
    throw new RuntimeRemoteException(paramLatLngBounds);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.b
 * JD-Core Version:    0.6.2
 */