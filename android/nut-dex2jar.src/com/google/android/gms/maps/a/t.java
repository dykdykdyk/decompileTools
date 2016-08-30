package com.google.android.gms.maps.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.dynamic.i;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
import com.google.android.gms.maps.model.n;
import com.google.android.gms.maps.model.v;

public abstract class t extends Binder
  implements s
{
  public static s a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof s)))
      return (s)localIInterface;
    return new u(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject1 = null;
    Object localObject4 = null;
    h localh = null;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    int i = 0;
    int j = 0;
    int k = 0;
    int m = 0;
    boolean bool1 = false;
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramParcel1.readInt() != 0)
        bool1 = true;
      a(bool1);
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      bool1 = bool2;
      if (paramParcel1.readInt() != 0)
        bool1 = true;
      b(bool1);
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      bool1 = bool3;
      if (paramParcel1.readInt() != 0)
        bool1 = true;
      c(bool1);
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      bool1 = bool4;
      if (paramParcel1.readInt() != 0)
        bool1 = true;
      d(bool1);
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      bool1 = a();
      paramParcel2.writeNoException();
      paramInt1 = i;
      if (bool1)
        paramInt1 = 1;
      paramParcel2.writeInt(paramInt1);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      bool1 = b();
      paramParcel2.writeNoException();
      paramInt1 = j;
      if (bool1)
        paramInt1 = 1;
      paramParcel2.writeInt(paramInt1);
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      bool1 = c();
      paramParcel2.writeNoException();
      paramInt1 = k;
      if (bool1)
        paramInt1 = 1;
      paramParcel2.writeInt(paramInt1);
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      bool1 = d();
      paramParcel2.writeNoException();
      paramInt1 = m;
      if (bool1)
        paramInt1 = 1;
      paramParcel2.writeInt(paramInt1);
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramParcel1.readInt() != 0);
      for (localObject1 = (StreetViewPanoramaCamera)StreetViewPanoramaCamera.CREATOR.createFromParcel(paramParcel1); ; localObject1 = null)
      {
        a((StreetViewPanoramaCamera)localObject1, paramParcel1.readLong());
        paramParcel2.writeNoException();
        return true;
      }
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      paramParcel1 = e();
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (LatLng)LatLng.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramParcel1.readInt() != 0);
      for (localObject1 = (LatLng)LatLng.CREATOR.createFromParcel(paramParcel1); ; localObject1 = null)
      {
        a((LatLng)localObject1, paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      }
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      paramParcel1 = f();
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 15:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localh;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener");
        if ((localObject1 != null) && ((localObject1 instanceof db)))
          paramParcel1 = (db)localObject1;
        else
          paramParcel1 = new dd(paramParcel1);
      }
    case 16:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject2;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaCameraChangeListener");
        if ((localObject1 != null) && ((localObject1 instanceof cy)))
          paramParcel1 = (cy)localObject1;
        else
          paramParcel1 = new da(paramParcel1);
      }
    case 17:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject3;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaClickListener");
        if ((localObject1 != null) && ((localObject1 instanceof de)))
          paramParcel1 = (de)localObject1;
        else
          paramParcel1 = new dg(paramParcel1);
      }
    case 18:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      paramParcel1 = a(i.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 19:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (StreetViewPanoramaOrientation)StreetViewPanoramaOrientation.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localh = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject1;
        if (localh != null)
          paramParcel1 = localh.asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 20:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
    paramParcel1 = paramParcel1.readStrongBinder();
    if (paramParcel1 == null)
      paramParcel1 = localObject4;
    while (true)
    {
      a(paramParcel1);
      paramParcel2.writeNoException();
      return true;
      localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaLongClickListener");
      if ((localObject1 != null) && ((localObject1 instanceof dh)))
        paramParcel1 = (dh)localObject1;
      else
        paramParcel1 = new dj(paramParcel1);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.t
 * JD-Core Version:    0.6.2
 */