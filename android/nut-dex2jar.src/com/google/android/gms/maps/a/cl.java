package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

final class cl
  implements cj
{
  private IBinder a;

  cl(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final boolean a()
    throws RemoteException
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener");
      this.a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
        return bool;
      bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final IBinder asBinder()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.cl
 * JD-Core Version:    0.6.2
 */