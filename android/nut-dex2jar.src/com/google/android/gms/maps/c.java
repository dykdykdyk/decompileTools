package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.f;

public final class c
{
  public final com.google.android.gms.maps.a.d a;
  private w b;

  protected c(com.google.android.gms.maps.a.d paramd)
  {
    this.a = ((com.google.android.gms.maps.a.d)b.a(paramd));
  }

  public final com.google.android.gms.maps.model.d a(CircleOptions paramCircleOptions)
  {
    try
    {
      paramCircleOptions = new com.google.android.gms.maps.model.d(this.a.a(paramCircleOptions));
      return paramCircleOptions;
    }
    catch (RemoteException paramCircleOptions)
    {
    }
    throw new RuntimeRemoteException(paramCircleOptions);
  }

  public final f a(MarkerOptions paramMarkerOptions)
  {
    try
    {
      paramMarkerOptions = this.a.a(paramMarkerOptions);
      if (paramMarkerOptions != null)
      {
        paramMarkerOptions = new f(paramMarkerOptions);
        return paramMarkerOptions;
      }
      return null;
    }
    catch (RemoteException paramMarkerOptions)
    {
    }
    throw new RuntimeRemoteException(paramMarkerOptions);
  }

  public final void a()
  {
    try
    {
      this.a.c(true);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final w b()
  {
    try
    {
      if (this.b == null)
        this.b = new w(this.a.k());
      w localw = this.b;
      return localw;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.c
 * JD-Core Version:    0.6.2
 */