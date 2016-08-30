package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.model.a.d;
import com.google.android.gms.maps.model.a.e;

final class as
  implements aq
{
  private IBinder a;

  as(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final a a()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      this.a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      a locala = b.a(localParcel2.readStrongBinder());
      return locala;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final m a(h paramh, GoogleMapOptions paramGoogleMapOptions)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramh != null)
      {
        paramh = paramh.asBinder();
        localParcel1.writeStrongBinder(paramh);
        if (paramGoogleMapOptions == null)
          break label91;
        localParcel1.writeInt(1);
        paramGoogleMapOptions.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(3, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramh = n.a(localParcel2.readStrongBinder());
        return paramh;
        paramh = null;
        break;
        label91: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramh;
  }

  public final y a(h paramh, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramh != null)
      {
        paramh = paramh.asBinder();
        localParcel1.writeStrongBinder(paramh);
        if (paramStreetViewPanoramaOptions == null)
          break label92;
        localParcel1.writeInt(1);
        paramStreetViewPanoramaOptions.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(7, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramh = z.a(localParcel2.readStrongBinder());
        return paramh;
        paramh = null;
        break;
        label92: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramh;
  }

  public final void a(h paramh)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramh != null);
      for (paramh = paramh.asBinder(); ; paramh = null)
      {
        localParcel1.writeStrongBinder(paramh);
        this.a.transact(1, localParcel1, localParcel2, 0);
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

  public final void a(h paramh, int paramInt)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramh != null);
      for (paramh = paramh.asBinder(); ; paramh = null)
      {
        localParcel1.writeStrongBinder(paramh);
        localParcel1.writeInt(paramInt);
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

  public final IBinder asBinder()
  {
    return this.a;
  }

  public final j b(h paramh)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramh != null);
      for (paramh = paramh.asBinder(); ; paramh = null)
      {
        localParcel1.writeStrongBinder(paramh);
        this.a.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramh = k.a(localParcel2.readStrongBinder());
        return paramh;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramh;
  }

  public final d b()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      this.a.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      d locald = e.a(localParcel2.readStrongBinder());
      return locald;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final v c(h paramh)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      if (paramh != null);
      for (paramh = paramh.asBinder(); ; paramh = null)
      {
        localParcel1.writeStrongBinder(paramh);
        this.a.transact(8, localParcel1, localParcel2, 0);
        localParcel2.readException();
        paramh = w.a(localParcel2.readStrongBinder());
        return paramh;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramh;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.as
 * JD-Core Version:    0.6.2
 */