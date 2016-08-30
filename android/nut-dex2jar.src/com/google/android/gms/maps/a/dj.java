package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

final class dj
  implements dh
{
  private IBinder a;

  dj(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnStreetViewPanoramaLongClickListener");
      if (paramStreetViewPanoramaOrientation != null)
      {
        localParcel1.writeInt(1);
        paramStreetViewPanoramaOrientation.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramStreetViewPanoramaOrientation;
  }

  public final IBinder asBinder()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.dj
 * JD-Core Version:    0.6.2
 */