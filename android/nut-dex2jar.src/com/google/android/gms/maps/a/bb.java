package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.a.j;

final class bb
  implements az
{
  private IBinder a;

  bb(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(j paramj)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnGroundOverlayClickListener");
      if (paramj != null);
      for (paramj = paramj.asBinder(); ; paramj = null)
      {
        localParcel1.writeStrongBinder(paramj);
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
    throw paramj;
  }

  public final IBinder asBinder()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.bb
 * JD-Core Version:    0.6.2
 */