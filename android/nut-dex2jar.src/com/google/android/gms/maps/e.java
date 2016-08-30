package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.maps.a.bo;
import com.google.android.gms.maps.model.RuntimeRemoteException;

final class e
  implements q
{
  e(d paramd, bo parambo)
  {
  }

  public final void a(Location paramLocation)
  {
    try
    {
      this.a.a(paramLocation);
      return;
    }
    catch (RemoteException paramLocation)
    {
    }
    throw new RuntimeRemoteException(paramLocation);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.e
 * JD-Core Version:    0.6.2
 */