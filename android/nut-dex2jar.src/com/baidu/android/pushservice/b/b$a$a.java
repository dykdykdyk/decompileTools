package com.baidu.android.pushservice.b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class b$a$a
  implements b
{
  private IBinder a;

  b$a$a(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public void a(int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushServiceListener");
      localParcel1.writeInt(paramInt);
      localParcel1.writeString(paramString);
      this.a.transact(2, localParcel1, localParcel2, 0);
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

  public IBinder asBinder()
  {
    return this.a;
  }

  public void b(int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushServiceListener");
      localParcel1.writeInt(paramInt);
      localParcel1.writeString(paramString);
      this.a.transact(1, localParcel1, localParcel2, 0);
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

  public void c(int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushServiceListener");
      localParcel1.writeInt(paramInt);
      localParcel1.writeString(paramString);
      this.a.transact(3, localParcel1, localParcel2, 0);
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
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.b.b.a.a
 * JD-Core Version:    0.6.2
 */