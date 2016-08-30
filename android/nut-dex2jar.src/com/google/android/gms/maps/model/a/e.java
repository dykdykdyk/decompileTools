package com.google.android.gms.maps.model.a;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;

public abstract class e extends Binder
  implements d
{
  public static d a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof d)))
      return (d)localIInterface;
    return new f(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = null;
    h localh1 = null;
    Object localObject4 = null;
    h localh2 = null;
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      paramParcel1 = a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      if (paramParcel1 != null);
      for (paramParcel1 = paramParcel1.asBinder(); ; paramParcel1 = null)
      {
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      localh1 = a(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel1 = localh2;
      if (localh1 != null)
        paramParcel1 = localh1.asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      localh1 = b(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel1 = localObject1;
      if (localh1 != null)
        paramParcel1 = localh1.asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      localh1 = a();
      paramParcel2.writeNoException();
      paramParcel1 = localObject2;
      if (localh1 != null)
        paramParcel1 = localh1.asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      localh1 = a(paramParcel1.readFloat());
      paramParcel2.writeNoException();
      paramParcel1 = localObject3;
      if (localh1 != null)
        paramParcel1 = localh1.asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bitmap)Bitmap.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localh2 = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = localh1;
        if (localh2 != null)
          paramParcel1 = localh2.asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 7:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    localh1 = c(paramParcel1.readString());
    paramParcel2.writeNoException();
    paramParcel1 = localObject4;
    if (localh1 != null)
      paramParcel1 = localh1.asBinder();
    paramParcel2.writeStrongBinder(paramParcel1);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.a.e
 * JD-Core Version:    0.6.2
 */