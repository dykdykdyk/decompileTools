package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.dynamic.i;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.model.a.d;
import com.google.android.gms.maps.x;

public abstract class ar extends Binder
  implements aq
{
  public static aq a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
    if ((localIInterface != null) && ((localIInterface instanceof aq)))
      return (aq)localIInterface;
    return new as(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject2 = null;
    Object localObject5 = null;
    Object localObject1 = null;
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.ICreator");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      a(i.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      paramParcel1 = b(i.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      if (paramParcel1 != null);
      for (paramParcel1 = paramParcel1.asBinder(); ; paramParcel1 = null)
      {
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      localObject2 = i.a(paramParcel1.readStrongBinder());
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (GoogleMapOptions)GoogleMapOptions.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localObject2 = a((h)localObject2, paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject1;
        if (localObject2 != null)
          paramParcel1 = ((m)localObject2).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      localObject1 = a();
      paramParcel2.writeNoException();
      paramParcel1 = localObject3;
      if (localObject1 != null)
        paramParcel1 = ((a)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      localObject1 = b();
      paramParcel2.writeNoException();
      paramParcel1 = localObject4;
      if (localObject1 != null)
        paramParcel1 = ((d)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      a(i.a(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
      localObject1 = i.a(paramParcel1.readStrongBinder());
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (StreetViewPanoramaOptions)StreetViewPanoramaOptions.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localObject1 = a((h)localObject1, paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject2;
        if (localObject1 != null)
          paramParcel1 = ((y)localObject1).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 8:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
    localObject1 = c(i.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    paramParcel1 = localObject5;
    if (localObject1 != null)
      paramParcel1 = ((v)localObject1).asBinder();
    paramParcel2.writeStrongBinder(paramParcel1);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.ar
 * JD-Core Version:    0.6.2
 */