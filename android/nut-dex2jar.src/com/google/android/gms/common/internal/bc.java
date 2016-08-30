package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;

public abstract class bc extends Binder
  implements bb
{
  public bc()
  {
    attachInterface(this, "com.google.android.gms.common.internal.ICertData");
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.common.internal.ICertData");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.ICertData");
      paramParcel1 = a();
      paramParcel2.writeNoException();
      if (paramParcel1 != null);
      for (paramParcel1 = paramParcel1.asBinder(); ; paramParcel1 = null)
      {
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 2:
    }
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.ICertData");
    paramInt1 = b();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.bc
 * JD-Core Version:    0.6.2
 */