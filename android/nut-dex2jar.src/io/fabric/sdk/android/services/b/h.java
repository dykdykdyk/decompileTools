package io.fabric.sdk.android.services.b;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;

final class h
  implements IInterface
{
  private final IBinder a;

  public h(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final String a()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      this.a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    catch (Exception localException)
    {
      f.b().a("Fabric", "Could not get parcel from Google Play Service to capture AdvertisingId");
      return null;
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

  public final boolean b()
    throws RemoteException
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      localParcel1.writeInt(1);
      this.a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0);
      while (true)
      {
        return bool;
        bool = false;
      }
    }
    catch (Exception localException)
    {
      f.b().a("Fabric", "Could not get parcel from Google Play Service to capture Advertising limitAdTracking");
      return false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.h
 * JD-Core Version:    0.6.2
 */