package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;

public abstract interface db extends IInterface
{
  public abstract void a(StreetViewPanoramaLocation paramStreetViewPanoramaLocation)
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.db
 * JD-Core Version:    0.6.2
 */