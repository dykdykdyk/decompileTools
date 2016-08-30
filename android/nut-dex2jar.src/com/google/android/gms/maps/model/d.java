package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.maps.model.a.g;

public final class d
{
  public final g a;

  public d(g paramg)
  {
    this.a = ((g)b.a(paramg));
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d))
      return false;
    try
    {
      boolean bool = this.a.a(((d)paramObject).a);
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
      int i = this.a.j();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.d
 * JD-Core Version:    0.6.2
 */