package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.a.p;

final class ci
  implements cg
{
  private IBinder a;

  ci(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(p paramp)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMarkerDragListener");
      if (paramp != null);
      for (paramp = paramp.asBinder(); ; paramp = null)
      {
        localParcel1.writeStrongBinder(paramp);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
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

  public final void b(p paramp)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMarkerDragListener");
      if (paramp != null);
      for (paramp = paramp.asBinder(); ; paramp = null)
      {
        localParcel1.writeStrongBinder(paramp);
        this.a.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramp;
  }

  public final void c(p paramp)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMarkerDragListener");
      if (paramp != null);
      for (paramp = paramp.asBinder(); ; paramp = null)
      {
        localParcel1.writeStrongBinder(paramp);
        this.a.transact(3, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
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
 * Qualified Name:     com.google.android.gms.maps.a.ci
 * JD-Core Version:    0.6.2
 */