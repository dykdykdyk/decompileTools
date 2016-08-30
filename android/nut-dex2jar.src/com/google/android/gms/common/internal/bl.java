package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class bl
  implements bj
{
  private IBinder a;

  public bl(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(ResolveAccountResponse paramResolveAccountResponse)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IResolveAccountCallbacks");
      if (paramResolveAccountResponse != null)
      {
        localParcel1.writeInt(1);
        paramResolveAccountResponse.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(2, localParcel1, localParcel2, 0);
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
    throw paramResolveAccountResponse;
  }

  public final IBinder asBinder()
  {
    return this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.bl
 * JD-Core Version:    0.6.2
 */