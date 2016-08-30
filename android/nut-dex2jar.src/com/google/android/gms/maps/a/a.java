package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public abstract interface a extends IInterface
{
  public abstract h a()
    throws RemoteException;

  public abstract h a(float paramFloat)
    throws RemoteException;

  public abstract h a(float paramFloat1, float paramFloat2)
    throws RemoteException;

  public abstract h a(float paramFloat, int paramInt1, int paramInt2)
    throws RemoteException;

  public abstract h a(CameraPosition paramCameraPosition)
    throws RemoteException;

  public abstract h a(LatLng paramLatLng)
    throws RemoteException;

  public abstract h a(LatLng paramLatLng, float paramFloat)
    throws RemoteException;

  public abstract h a(LatLngBounds paramLatLngBounds, int paramInt)
    throws RemoteException;

  public abstract h a(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
    throws RemoteException;

  public abstract h b()
    throws RemoteException;

  public abstract h b(float paramFloat)
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.a
 * JD-Core Version:    0.6.2
 */