package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class ck extends Binder
  implements cj
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener");
    boolean bool = a();
    paramParcel2.writeNoException();
    if (bool);
    for (paramInt1 = 1; ; paramInt1 = 0)
    {
      paramParcel2.writeInt(paramInt1);
      return true;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.ck
 * JD-Core Version:    0.6.2
 */