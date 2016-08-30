package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.a.s;

final class cu
  implements cs
{
  private IBinder a;

  cu(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(s params)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnPolygonClickListener");
      if (params != null);
      for (params = params.asBinder(); ; params = null)
      {
        localParcel1.writeStrongBinder(params);
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
    throw params;
  }

  public final IBinder asBinder()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.cu
 * JD-Core Version:    0.6.2
 */