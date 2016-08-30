package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.dynamic.i;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.x;

public abstract class k extends Binder
  implements j
{
  public static j a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof j)))
      return (j)localIInterface;
    return new l(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    GoogleMapOptions localGoogleMapOptions = null;
    h localh1;
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      paramParcel1 = a();
      paramParcel2.writeNoException();
      if (paramParcel1 != null);
      for (paramParcel1 = paramParcel1.asBinder(); ; paramParcel1 = null)
      {
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      localh1 = i.a(paramParcel1.readStrongBinder());
      if (paramParcel1.readInt() != 0)
      {
        localGoogleMapOptions = (GoogleMapOptions)GoogleMapOptions.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0)
          break label267;
      }
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a(localh1, localGoogleMapOptions, paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localGoogleMapOptions = null;
        break;
      }
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      localh1 = i.a(paramParcel1.readStrongBinder());
      h localh2 = i.a(paramParcel1.readStrongBinder());
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localh1 = a(localh1, localh2, paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = localGoogleMapOptions;
        if (localh1 != null)
          paramParcel1 = localh1.asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      b();
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      c();
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      d();
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      e();
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      f();
      paramParcel2.writeNoException();
      return true;
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        b(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 == null)
          break;
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      boolean bool = g();
      paramParcel2.writeNoException();
      if (bool);
      for (paramInt1 = 1; ; paramInt1 = 0)
      {
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      a(cb.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 13:
      label267: paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        c(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 14:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
    h();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.k
 * JD-Core Version:    0.6.2
 */