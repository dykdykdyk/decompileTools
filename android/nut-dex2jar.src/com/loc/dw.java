package com.loc;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract class dw extends Binder
  implements dv
{
  public static dv a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.amap.api.service.locationprovider.ILocationProviderService");
    if ((localIInterface != null) && ((localIInterface instanceof dv)))
      return (dv)localIInterface;
    return new dx(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.amap.api.service.locationprovider.ILocationProviderService");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.amap.api.service.locationprovider.ILocationProviderService");
    if (paramParcel1.readInt() != 0)
    {
      paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      paramInt1 = a(paramParcel1);
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      if (paramParcel1 == null)
        break label109;
      paramParcel2.writeInt(1);
      paramParcel1.writeToParcel(paramParcel2, 1);
    }
    while (true)
    {
      return true;
      paramParcel1 = null;
      break;
      label109: paramParcel2.writeInt(0);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.dw
 * JD-Core Version:    0.6.2
 */