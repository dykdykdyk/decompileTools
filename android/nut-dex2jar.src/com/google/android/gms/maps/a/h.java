package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class h extends Binder
  implements g
{
  public h()
  {
    attachInterface(this, "com.google.android.gms.maps.internal.ILocationSourceDelegate");
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.ILocationSourceDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = null;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        IInterface localIInterface = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnLocationChangeListener");
        if ((localIInterface != null) && ((localIInterface instanceof bo)))
          paramParcel1 = (bo)localIInterface;
        else
          paramParcel1 = new bq(paramParcel1);
      }
    case 2:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
    a();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.h
 * JD-Core Version:    0.6.2
 */