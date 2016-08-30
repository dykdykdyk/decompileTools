package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.j;
import com.google.android.gms.maps.model.m;
import com.google.android.gms.maps.model.n;

public abstract class b extends Binder
  implements a
{
  public static a a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof a)))
      return (a)localIInterface;
    return new c(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    Object localObject6 = null;
    Object localObject7 = null;
    Object localObject8 = null;
    Object localObject9 = null;
    Object localObject1 = null;
    h localh = null;
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      paramParcel1 = a();
      paramParcel2.writeNoException();
      if (paramParcel1 != null);
      for (paramParcel1 = paramParcel1.asBinder(); ; paramParcel1 = null)
      {
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localObject1 = b();
      paramParcel2.writeNoException();
      paramParcel1 = localObject5;
      if (localObject1 != null)
        paramParcel1 = ((h)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localObject1 = a(paramParcel1.readFloat(), paramParcel1.readFloat());
      paramParcel2.writeNoException();
      paramParcel1 = localObject6;
      if (localObject1 != null)
        paramParcel1 = ((h)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localObject1 = a(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      paramParcel1 = localObject7;
      if (localObject1 != null)
        paramParcel1 = ((h)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localObject1 = b(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      paramParcel1 = localObject8;
      if (localObject1 != null)
        paramParcel1 = ((h)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localObject1 = a(paramParcel1.readFloat(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel1 = localObject9;
      if (localObject1 != null)
        paramParcel1 = ((h)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (CameraPosition)CameraPosition.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localh = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject1;
        if (localh != null)
          paramParcel1 = localh.asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (LatLng)LatLng.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localObject1 = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = localh;
        if (localObject1 != null)
          paramParcel1 = ((h)localObject1).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramParcel1.readInt() != 0);
      for (localObject1 = (LatLng)LatLng.CREATOR.createFromParcel(paramParcel1); ; localObject1 = null)
      {
        localObject1 = a((LatLng)localObject1, paramParcel1.readFloat());
        paramParcel2.writeNoException();
        paramParcel1 = localObject2;
        if (localObject1 != null)
          paramParcel1 = ((h)localObject1).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      if (paramParcel1.readInt() != 0);
      for (localObject1 = (LatLngBounds)LatLngBounds.CREATOR.createFromParcel(paramParcel1); ; localObject1 = null)
      {
        localObject1 = a((LatLngBounds)localObject1, paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel1 = localObject3;
        if (localObject1 != null)
          paramParcel1 = ((h)localObject1).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 11:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
    if (paramParcel1.readInt() != 0);
    for (localObject1 = (LatLngBounds)LatLngBounds.CREATOR.createFromParcel(paramParcel1); ; localObject1 = null)
    {
      localObject1 = a((LatLngBounds)localObject1, paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel1 = localObject4;
      if (localObject1 != null)
        paramParcel1 = ((h)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.b
 * JD-Core Version:    0.6.2
 */