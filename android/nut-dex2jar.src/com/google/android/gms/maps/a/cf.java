package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.a.p;

final class cf
  implements cd
{
  private IBinder a;

  cf(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final boolean a(p paramp)
    throws RemoteException
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMarkerClickListener");
      if (paramp != null)
      {
        paramp = paramp.asBinder();
        localParcel1.writeStrongBinder(paramp);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int i = localParcel2.readInt();
        if (i == 0)
          break label84;
      }
      while (true)
      {
        return bool;
        paramp = null;
        break;
        label84: bool = false;
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
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.cf
 * JD-Core Version:    0.6.2
 */