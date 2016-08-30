package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
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
import com.google.android.gms.maps.model.a.b;
import com.google.android.gms.maps.model.a.k;
import com.google.android.gms.maps.model.a.m;
import com.google.android.gms.maps.model.a.n;
import com.google.android.gms.maps.model.a.s;
import com.google.android.gms.maps.model.a.t;
import com.google.android.gms.maps.model.a.v;
import com.google.android.gms.maps.model.a.w;

final class f
  implements d
{
  private IBinder a;

  f(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final CameraPosition a()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      if (localParcel2.readInt() != 0)
      {
        localCameraPosition = (CameraPosition)CameraPosition.CREATOR.createFromParcel(localParcel2);
        return localCameraPosition;
      }
      CameraPosition localCameraPosition = null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final a a(PolylineOptions paramPolylineOptions)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramPolylineOptions != null)
      {
        localParcel1.writeInt(1);
        paramPolylineOptions.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(9, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramPolylineOptions = b.a(localParcel2.readStrongBinder());
        return paramPolylineOptions;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramPolylineOptions;
  }

  public final com.google.android.gms.maps.model.a.g a(CircleOptions paramCircleOptions)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramCircleOptions != null)
      {
        localParcel1.writeInt(1);
        paramCircleOptions.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(35, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramCircleOptions = com.google.android.gms.maps.model.a.h.a(localParcel2.readStrongBinder());
        return paramCircleOptions;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramCircleOptions;
  }

  public final com.google.android.gms.maps.model.a.j a(GroundOverlayOptions paramGroundOverlayOptions)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramGroundOverlayOptions != null)
      {
        localParcel1.writeInt(1);
        paramGroundOverlayOptions.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(12, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramGroundOverlayOptions = k.a(localParcel2.readStrongBinder());
        return paramGroundOverlayOptions;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramGroundOverlayOptions;
  }

  public final com.google.android.gms.maps.model.a.p a(MarkerOptions paramMarkerOptions)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramMarkerOptions != null)
      {
        localParcel1.writeInt(1);
        paramMarkerOptions.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(11, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramMarkerOptions = com.google.android.gms.maps.model.a.q.a(localParcel2.readStrongBinder());
        return paramMarkerOptions;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramMarkerOptions;
  }

  public final s a(PolygonOptions paramPolygonOptions)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramPolygonOptions != null)
      {
        localParcel1.writeInt(1);
        paramPolygonOptions.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(10, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramPolygonOptions = t.a(localParcel2.readStrongBinder());
        return paramPolygonOptions;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramPolygonOptions;
  }

  public final v a(TileOverlayOptions paramTileOverlayOptions)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramTileOverlayOptions != null)
      {
        localParcel1.writeInt(1);
        paramTileOverlayOptions.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(13, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramTileOverlayOptions = w.a(localParcel2.readStrongBinder());
        return paramTileOverlayOptions;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramTileOverlayOptions;
  }

  public final void a(int paramInt)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localParcel1.writeInt(paramInt);
      this.a.transact(16, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localParcel1.writeInt(paramInt1);
      localParcel1.writeInt(paramInt2);
      localParcel1.writeInt(paramInt3);
      localParcel1.writeInt(paramInt4);
      this.a.transact(39, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBundle != null)
      {
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(54, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramBundle;
  }

  public final void a(com.google.android.gms.dynamic.h paramh)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramh != null);
      for (paramh = paramh.asBinder(); ; paramh = null)
      {
        localParcel1.writeStrongBinder(paramh);
        this.a.transact(4, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramh;
  }

  public final void a(com.google.android.gms.dynamic.h paramh, int paramInt, an paraman)
    throws RemoteException
  {
    Object localObject = null;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramh != null);
      for (paramh = paramh.asBinder(); ; paramh = null)
      {
        localParcel1.writeStrongBinder(paramh);
        localParcel1.writeInt(paramInt);
        paramh = localObject;
        if (paraman != null)
          paramh = paraman.asBinder();
        localParcel1.writeStrongBinder(paramh);
        this.a.transact(7, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramh;
  }

  public final void a(com.google.android.gms.dynamic.h paramh, an paraman)
    throws RemoteException
  {
    Object localObject = null;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramh != null);
      for (paramh = paramh.asBinder(); ; paramh = null)
      {
        localParcel1.writeStrongBinder(paramh);
        paramh = localObject;
        if (paraman != null)
          paramh = paraman.asBinder();
        localParcel1.writeStrongBinder(paramh);
        this.a.transact(6, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramh;
  }

  public final void a(aj paramaj, com.google.android.gms.dynamic.h paramh)
    throws RemoteException
  {
    Object localObject = null;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramaj != null);
      for (paramaj = paramaj.asBinder(); ; paramaj = null)
      {
        localParcel1.writeStrongBinder(paramaj);
        paramaj = localObject;
        if (paramh != null)
          paramaj = paramh.asBinder();
        localParcel1.writeStrongBinder(paramaj);
        this.a.transact(38, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramaj;
  }

  public final void a(at paramat)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramat != null);
      for (paramat = paramat.asBinder(); ; paramat = null)
      {
        localParcel1.writeStrongBinder(paramat);
        this.a.transact(33, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramat;
  }

  public final void a(aw paramaw)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramaw != null);
      for (paramaw = paramaw.asBinder(); ; paramaw = null)
      {
        localParcel1.writeStrongBinder(paramaw);
        this.a.transact(27, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramaw;
  }

  public final void a(az paramaz)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramaz != null);
      for (paramaz = paramaz.asBinder(); ; paramaz = null)
      {
        localParcel1.writeStrongBinder(paramaz);
        this.a.transact(83, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramaz;
  }

  public final void a(bc parambc)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parambc != null);
      for (parambc = parambc.asBinder(); ; parambc = null)
      {
        localParcel1.writeStrongBinder(parambc);
        this.a.transact(45, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambc;
  }

  public final void a(bf parambf)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parambf != null);
      for (parambf = parambf.asBinder(); ; parambf = null)
      {
        localParcel1.writeStrongBinder(parambf);
        this.a.transact(32, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambf;
  }

  public final void a(bi parambi)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parambi != null);
      for (parambi = parambi.asBinder(); ; parambi = null)
      {
        localParcel1.writeStrongBinder(parambi);
        this.a.transact(86, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambi;
  }

  public final void a(bl parambl)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parambl != null);
      for (parambl = parambl.asBinder(); ; parambl = null)
      {
        localParcel1.writeStrongBinder(parambl);
        this.a.transact(84, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambl;
  }

  public final void a(br parambr)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parambr != null);
      for (parambr = parambr.asBinder(); ; parambr = null)
      {
        localParcel1.writeStrongBinder(parambr);
        this.a.transact(28, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambr;
  }

  public final void a(bu parambu)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parambu != null);
      for (parambu = parambu.asBinder(); ; parambu = null)
      {
        localParcel1.writeStrongBinder(parambu);
        this.a.transact(42, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambu;
  }

  public final void a(bx parambx)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parambx != null);
      for (parambx = parambx.asBinder(); ; parambx = null)
      {
        localParcel1.writeStrongBinder(parambx);
        this.a.transact(29, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambx;
  }

  public final void a(ca paramca)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramca != null);
      for (paramca = paramca.asBinder(); ; paramca = null)
      {
        localParcel1.writeStrongBinder(paramca);
        this.a.transact(53, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramca;
  }

  public final void a(cd paramcd)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcd != null);
      for (paramcd = paramcd.asBinder(); ; paramcd = null)
      {
        localParcel1.writeStrongBinder(paramcd);
        this.a.transact(30, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramcd;
  }

  public final void a(cg paramcg)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcg != null);
      for (paramcg = paramcg.asBinder(); ; paramcg = null)
      {
        localParcel1.writeStrongBinder(paramcg);
        this.a.transact(31, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramcg;
  }

  public final void a(cj paramcj)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcj != null);
      for (paramcj = paramcj.asBinder(); ; paramcj = null)
      {
        localParcel1.writeStrongBinder(paramcj);
        this.a.transact(37, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramcj;
  }

  public final void a(cm paramcm)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcm != null);
      for (paramcm = paramcm.asBinder(); ; paramcm = null)
      {
        localParcel1.writeStrongBinder(paramcm);
        this.a.transact(36, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramcm;
  }

  public final void a(cp paramcp)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcp != null);
      for (paramcp = paramcp.asBinder(); ; paramcp = null)
      {
        localParcel1.writeStrongBinder(paramcp);
        this.a.transact(80, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramcp;
  }

  public final void a(cs paramcs)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcs != null);
      for (paramcs = paramcs.asBinder(); ; paramcs = null)
      {
        localParcel1.writeStrongBinder(paramcs);
        this.a.transact(85, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramcs;
  }

  public final void a(cv paramcv)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcv != null);
      for (paramcv = paramcv.asBinder(); ; paramcv = null)
      {
        localParcel1.writeStrongBinder(paramcv);
        this.a.transact(87, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramcv;
  }

  public final void a(g paramg)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramg != null);
      for (paramg = paramg.asBinder(); ; paramg = null)
      {
        localParcel1.writeStrongBinder(paramg);
        this.a.transact(24, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramg;
  }

  public final void a(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localParcel1.writeString(paramString);
      this.a.transact(61, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString;
  }

  public final void a(boolean paramBoolean)
    throws RemoteException
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBoolean)
        i = 1;
      localParcel1.writeInt(i);
      this.a.transact(18, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final IBinder asBinder()
  {
    return this.a;
  }

  public final float b()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      float f = localParcel2.readFloat();
      return f;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void b(Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBundle != null)
      {
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(60, localParcel1, localParcel2, 0);
        localParcel2.readException();
        if (localParcel2.readInt() != 0)
          paramBundle.readFromParcel(localParcel2);
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramBundle;
  }

  public final void b(com.google.android.gms.dynamic.h paramh)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramh != null);
      for (paramh = paramh.asBinder(); ; paramh = null)
      {
        localParcel1.writeStrongBinder(paramh);
        this.a.transact(5, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramh;
  }

  public final boolean b(boolean paramBoolean)
    throws RemoteException
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      int i;
      if (paramBoolean)
      {
        i = 1;
        localParcel1.writeInt(i);
        this.a.transact(20, localParcel1, localParcel2, 0);
        localParcel2.readException();
        i = localParcel2.readInt();
        if (i == 0)
          break label82;
      }
      label82: for (paramBoolean = bool; ; paramBoolean = false)
      {
        return paramBoolean;
        i = 0;
        break;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final float c()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      float f = localParcel2.readFloat();
      return f;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void c(Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBundle != null)
      {
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(81, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramBundle;
  }

  public final void c(boolean paramBoolean)
    throws RemoteException
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBoolean)
        i = 1;
      localParcel1.writeInt(i);
      this.a.transact(22, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void d()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(8, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void d(boolean paramBoolean)
    throws RemoteException
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBoolean)
        i = 1;
      localParcel1.writeInt(i);
      this.a.transact(41, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void e()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(14, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final int f()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(15, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final boolean g()
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(17, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
        bool = true;
      return bool;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final boolean h()
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(19, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
        bool = true;
      return bool;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final boolean i()
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(21, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
        bool = true;
      return bool;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final Location j()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(23, localParcel1, localParcel2, 0);
      localParcel2.readException();
      if (localParcel2.readInt() != 0)
      {
        localLocation = (Location)Location.CREATOR.createFromParcel(localParcel2);
        return localLocation;
      }
      Location localLocation = null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final ab k()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(25, localParcel1, localParcel2, 0);
      localParcel2.readException();
      ab localab = ac.a(localParcel2.readStrongBinder());
      return localab;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final p l()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(26, localParcel1, localParcel2, 0);
      localParcel2.readException();
      p localp = q.a(localParcel2.readStrongBinder());
      return localp;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final boolean m()
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(40, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
        bool = true;
      return bool;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final m n()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(44, localParcel1, localParcel2, 0);
      localParcel2.readException();
      m localm = n.a(localParcel2.readStrongBinder());
      return localm;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void o()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(55, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void p()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(56, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void q()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(57, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void r()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(58, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final boolean s()
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(59, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
        bool = true;
      return bool;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void t()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(82, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.f
 * JD-Core Version:    0.6.2
 */