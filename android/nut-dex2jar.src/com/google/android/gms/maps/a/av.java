package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.dynamic.i;
import com.google.android.gms.maps.model.a.p;

final class av
  implements at
{
  private IBinder a;

  av(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final h a(p paramp)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      if (paramp != null);
      for (paramp = paramp.asBinder(); ; paramp = null)
      {
        localParcel1.writeStrongBinder(paramp);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramp = i.a(localParcel2.readStrongBinder());
        return paramp;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramp;
  }

  public final IBinder asBinder()
  {
    return this.a;
  }

  public final h b(p paramp)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      if (paramp != null);
      for (paramp = paramp.asBinder(); ; paramp = null)
      {
        localParcel1.writeStrongBinder(paramp);
        this.a.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramp = i.a(localParcel2.readStrongBinder());
        return paramp;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramp;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.av
 * JD-Core Version:    0.6.2
 */