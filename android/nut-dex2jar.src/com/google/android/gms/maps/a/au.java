package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.maps.model.a.q;

public abstract class au extends Binder
  implements at
{
  public au()
  {
    attachInterface(this, "com.google.android.gms.maps.internal.IInfoWindowAdapter");
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    h localh2 = null;
    h localh1 = null;
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      localh2 = a(q.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel1 = localh1;
      if (localh2 != null)
        paramParcel1 = localh2.asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 2:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
    localh1 = b(q.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    paramParcel1 = localh2;
    if (localh1 != null)
      paramParcel1 = localh1.asBinder();
    paramParcel2.writeStrongBinder(paramParcel1);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.au
 * JD-Core Version:    0.6.2
 */