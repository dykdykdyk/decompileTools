package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.maps.model.a.p;

public final class f
{
  public final p a;

  public f(p paramp)
  {
    this.a = ((p)b.a(paramp));
  }

  public final String a()
  {
    try
    {
      String str = this.a.b();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void a(a parama)
  {
    if (parama == null);
    try
    {
      this.a.a(null);
      return;
      this.a.a(parama.a);
      return;
    }
    catch (RemoteException parama)
    {
    }
    throw new RuntimeRemoteException(parama);
  }

  public final LatLng b()
  {
    try
    {
      LatLng localLatLng = this.a.c();
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final String c()
  {
    try
    {
      String str = this.a.d();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void d()
  {
    try
    {
      this.a.g();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof f))
      return false;
    try
    {
      boolean bool = this.a.a(((f)paramObject).a);
      return bool;
    }
    catch (RemoteException paramObject)
    {
    }
    throw new RuntimeRemoteException(paramObject);
  }

  public final int hashCode()
  {
    try
    {
      int i = this.a.k();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.f
 * JD-Core Version:    0.6.2
 */