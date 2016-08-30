package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.a.a;
import com.google.android.gms.maps.model.a.j;
import com.google.android.gms.maps.model.a.m;
import com.google.android.gms.maps.model.a.s;
import com.google.android.gms.maps.model.a.v;
import com.google.android.gms.maps.model.k;
import com.google.android.gms.maps.model.l;
import com.google.android.gms.maps.model.o;
import com.google.android.gms.maps.model.q;
import com.google.android.gms.maps.model.r;
import com.google.android.gms.maps.model.x;

public abstract class e extends Binder
  implements d
{
  public static d a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof d)))
      return (d)localIInterface;
    return new f(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    int i = 0;
    int j = 0;
    int k = 0;
    boolean bool2 = false;
    int m = 0;
    boolean bool3 = false;
    int n = 0;
    boolean bool1 = false;
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    Object localObject7 = null;
    Object localObject8 = null;
    Object localObject9 = null;
    Object localObject10 = null;
    Object localObject11 = null;
    Object localObject12 = null;
    Object localObject13 = null;
    Object localObject14 = null;
    Object localObject15 = null;
    Object localObject16 = null;
    Object localObject6 = null;
    Object localObject17 = null;
    Object localObject18 = null;
    Object localObject19 = null;
    Object localObject20 = null;
    Object localObject21 = null;
    Object localObject22 = null;
    Object localObject23 = null;
    Object localObject24 = null;
    Object localObject25 = null;
    Object localObject26 = null;
    Object localObject27 = null;
    Object localObject28 = null;
    Object localObject1 = null;
    float f;
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = a();
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      f = b();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      f = c();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(com.google.android.gms.dynamic.i.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      b(com.google.android.gms.dynamic.i.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(com.google.android.gms.dynamic.i.a(paramParcel1.readStrongBinder()), ao.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(com.google.android.gms.dynamic.i.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), ao.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      d();
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (PolylineOptions)PolylineOptions.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localObject2 = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject1;
        if (localObject2 != null)
          paramParcel1 = ((a)localObject2).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (PolygonOptions)PolygonOptions.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localObject1 = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject2;
        if (localObject1 != null)
          paramParcel1 = ((s)localObject1).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (MarkerOptions)MarkerOptions.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localObject1 = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = localObject3;
        if (localObject1 != null)
          paramParcel1 = ((com.google.android.gms.maps.model.a.p)localObject1).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (GroundOverlayOptions)GroundOverlayOptions.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localObject1 = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = localObject4;
        if (localObject1 != null)
          paramParcel1 = ((j)localObject1).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (TileOverlayOptions)TileOverlayOptions.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localObject1 = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = localObject5;
        if (localObject1 != null)
          paramParcel1 = ((v)localObject1).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      e();
      paramParcel2.writeNoException();
      return true;
    case 15:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramInt1 = f();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      return true;
    case 16:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 17:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = g();
      paramParcel2.writeNoException();
      if (bool1);
      for (paramInt1 = 1; ; paramInt1 = 0)
      {
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    case 18:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0)
        bool1 = true;
      a(bool1);
      paramParcel2.writeNoException();
      return true;
    case 19:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = h();
      paramParcel2.writeNoException();
      paramInt1 = i;
      if (bool1)
        paramInt1 = 1;
      paramParcel2.writeInt(paramInt1);
      return true;
    case 20:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (bool1 = true; ; bool1 = false)
      {
        bool1 = b(bool1);
        paramParcel2.writeNoException();
        paramInt1 = j;
        if (bool1)
          paramInt1 = 1;
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    case 21:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = i();
      paramParcel2.writeNoException();
      paramInt1 = k;
      if (bool1)
        paramInt1 = 1;
      paramParcel2.writeInt(paramInt1);
      return true;
    case 22:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = bool2;
      if (paramParcel1.readInt() != 0)
        bool1 = true;
      c(bool1);
      paramParcel2.writeNoException();
      return true;
    case 23:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = j();
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 24:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject7;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
        if ((localObject1 != null) && ((localObject1 instanceof g)))
          paramParcel1 = (g)localObject1;
        else
          paramParcel1 = new i(paramParcel1);
      }
    case 25:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = k();
      paramParcel2.writeNoException();
      paramParcel1 = localObject8;
      if (localObject1 != null)
        paramParcel1 = ((ab)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 26:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = l();
      paramParcel2.writeNoException();
      paramParcel1 = localObject9;
      if (localObject1 != null)
        paramParcel1 = ((p)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 27:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject10;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnCameraChangeListener");
        if ((localObject1 != null) && ((localObject1 instanceof aw)))
          paramParcel1 = (aw)localObject1;
        else
          paramParcel1 = new ay(paramParcel1);
      }
    case 28:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject11;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapClickListener");
        if ((localObject1 != null) && ((localObject1 instanceof br)))
          paramParcel1 = (br)localObject1;
        else
          paramParcel1 = new bt(paramParcel1);
      }
    case 29:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject12;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapLongClickListener");
        if ((localObject1 != null) && ((localObject1 instanceof bx)))
          paramParcel1 = (bx)localObject1;
        else
          paramParcel1 = new bz(paramParcel1);
      }
    case 30:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject13;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnMarkerClickListener");
        if ((localObject1 != null) && ((localObject1 instanceof cd)))
          paramParcel1 = (cd)localObject1;
        else
          paramParcel1 = new cf(paramParcel1);
      }
    case 31:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject14;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnMarkerDragListener");
        if ((localObject1 != null) && ((localObject1 instanceof cg)))
          paramParcel1 = (cg)localObject1;
        else
          paramParcel1 = new ci(paramParcel1);
      }
    case 32:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject15;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnInfoWindowClickListener");
        if ((localObject1 != null) && ((localObject1 instanceof bf)))
          paramParcel1 = (bf)localObject1;
        else
          paramParcel1 = new bh(paramParcel1);
      }
    case 33:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject16;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
        if ((localObject1 != null) && ((localObject1 instanceof at)))
          paramParcel1 = (at)localObject1;
        else
          paramParcel1 = new av(paramParcel1);
      }
    case 35:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (CircleOptions)CircleOptions.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        localObject1 = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = localObject6;
        if (localObject1 != null)
          paramParcel1 = ((com.google.android.gms.maps.model.a.g)localObject1).asBinder();
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 36:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject17;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnMyLocationChangeListener");
        if ((localObject1 != null) && ((localObject1 instanceof cm)))
          paramParcel1 = (cm)localObject1;
        else
          paramParcel1 = new co(paramParcel1);
      }
    case 37:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject18;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener");
        if ((localObject1 != null) && ((localObject1 instanceof cj)))
          paramParcel1 = (cj)localObject1;
        else
          paramParcel1 = new cl(paramParcel1);
      }
    case 38:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = paramParcel1.readStrongBinder();
      if (localObject1 == null)
        localObject1 = localObject19;
      while (true)
      {
        a((aj)localObject1, com.google.android.gms.dynamic.i.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
        localObject2 = ((IBinder)localObject1).queryLocalInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
        if ((localObject2 != null) && ((localObject2 instanceof aj)))
          localObject1 = (aj)localObject2;
        else
          localObject1 = new al((IBinder)localObject1);
      }
    case 39:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 40:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = m();
      paramParcel2.writeNoException();
      paramInt1 = m;
      if (bool1)
        paramInt1 = 1;
      paramParcel2.writeInt(paramInt1);
      return true;
    case 41:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = bool3;
      if (paramParcel1.readInt() != 0)
        bool1 = true;
      d(bool1);
      paramParcel2.writeNoException();
      return true;
    case 42:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject20;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
        if ((localObject1 != null) && ((localObject1 instanceof bu)))
          paramParcel1 = (bu)localObject1;
        else
          paramParcel1 = new bw(paramParcel1);
      }
    case 44:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = n();
      paramParcel2.writeNoException();
      paramParcel1 = localObject21;
      if (localObject1 != null)
        paramParcel1 = ((m)localObject1).asBinder();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 45:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject22;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnIndoorStateChangeListener");
        if ((localObject1 != null) && ((localObject1 instanceof bc)))
          paramParcel1 = (bc)localObject1;
        else
          paramParcel1 = new be(paramParcel1);
      }
    case 53:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(cb.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 54:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 55:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      o();
      paramParcel2.writeNoException();
      return true;
    case 56:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      p();
      paramParcel2.writeNoException();
      return true;
    case 57:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      q();
      paramParcel2.writeNoException();
      return true;
    case 58:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      r();
      paramParcel2.writeNoException();
      return true;
    case 59:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = s();
      paramParcel2.writeNoException();
      paramInt1 = n;
      if (bool1)
        paramInt1 = 1;
      paramParcel2.writeInt(paramInt1);
      return true;
    case 60:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
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
    case 61:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 80:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject23;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnPoiClickListener");
        if ((localObject1 != null) && ((localObject1 instanceof cp)))
          paramParcel1 = (cp)localObject1;
        else
          paramParcel1 = new cr(paramParcel1);
      }
    case 81:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        c(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 82:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      t();
      paramParcel2.writeNoException();
      return true;
    case 83:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject24;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnGroundOverlayClickListener");
        if ((localObject1 != null) && ((localObject1 instanceof az)))
          paramParcel1 = (az)localObject1;
        else
          paramParcel1 = new bb(paramParcel1);
      }
    case 84:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject25;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnInfoWindowLongClickListener");
        if ((localObject1 != null) && ((localObject1 instanceof bl)))
          paramParcel1 = (bl)localObject1;
        else
          paramParcel1 = new bn(paramParcel1);
      }
    case 85:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject26;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnPolygonClickListener");
        if ((localObject1 != null) && ((localObject1 instanceof cs)))
          paramParcel1 = (cs)localObject1;
        else
          paramParcel1 = new cu(paramParcel1);
      }
    case 86:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null)
        paramParcel1 = localObject27;
      while (true)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnInfoWindowCloseListener");
        if ((localObject1 != null) && ((localObject1 instanceof bi)))
          paramParcel1 = (bi)localObject1;
        else
          paramParcel1 = new bk(paramParcel1);
      }
    case 87:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
    paramParcel1 = paramParcel1.readStrongBinder();
    if (paramParcel1 == null)
      paramParcel1 = localObject28;
    while (true)
    {
      a(paramParcel1);
      paramParcel2.writeNoException();
      return true;
      localObject1 = paramParcel1.queryLocalInterface("com.google.android.gms.maps.internal.IOnPolylineClickListener");
      if ((localObject1 != null) && ((localObject1 instanceof cv)))
        paramParcel1 = (cv)localObject1;
      else
        paramParcel1 = new cx(paramParcel1);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.e
 * JD-Core Version:    0.6.2
 */