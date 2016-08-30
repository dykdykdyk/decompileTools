package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

final class bi
  implements bg
{
  private IBinder a;

  bi(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      this.a.transact(28, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(bd parambd, int paramInt)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
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
    throw parambd;
  }

  public final void a(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        this.a.transact(3, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void a(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label102;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label102: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void a(bd parambd, int paramInt, String paramString, IBinder paramIBinder, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        localParcel1.writeStrongBinder(paramIBinder);
        if (paramBundle == null)
          break label110;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(19, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label110: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void a(bd parambd, int paramInt, String paramString1, String paramString2)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        this.a.transact(34, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void a(bd parambd, int paramInt, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        localParcel1.writeString(paramString3);
        localParcel1.writeStringArray(paramArrayOfString);
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
    throw parambd;
  }

  public final void a(bd parambd, int paramInt, String paramString1, String paramString2, String[] paramArrayOfString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        localParcel1.writeStringArray(paramArrayOfString);
        this.a.transact(10, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void a(bd parambd, int paramInt, String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        localParcel1.writeStringArray(paramArrayOfString);
        if (paramBundle == null)
          break label117;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(30, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label117: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void a(bd parambd, int paramInt, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        localParcel1.writeStringArray(paramArrayOfString);
        localParcel1.writeString(paramString3);
        if (paramBundle == null)
          break label123;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label123: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void a(bd parambd, int paramInt, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, IBinder paramIBinder, String paramString4, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        localParcel1.writeStringArray(paramArrayOfString);
        localParcel1.writeString(paramString3);
        localParcel1.writeStrongBinder(paramIBinder);
        localParcel1.writeString(paramString4);
        if (paramBundle == null)
          break label138;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(9, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label138: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void a(bd parambd, int paramInt, String paramString1, String[] paramArrayOfString, String paramString2, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString1);
        localParcel1.writeStringArray(paramArrayOfString);
        localParcel1.writeString(paramString2);
        if (paramBundle == null)
          break label117;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(20, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label117: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void a(bd parambd, GetServiceRequest paramGetServiceRequest)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        if (paramGetServiceRequest == null)
          break label82;
        localParcel1.writeInt(1);
        paramGetServiceRequest.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(46, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label82: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void a(bd parambd, ValidateAccountRequest paramValidateAccountRequest)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        if (paramValidateAccountRequest == null)
          break label82;
        localParcel1.writeInt(1);
        paramValidateAccountRequest.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(47, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label82: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final IBinder asBinder()
  {
    return this.a;
  }

  public final void b(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        this.a.transact(21, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void b(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label102;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(5, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label102: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void c(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        this.a.transact(22, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void c(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(6, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void d(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
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
    throw parambd;
  }

  public final void d(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(7, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void e(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        this.a.transact(26, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void e(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(8, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void f(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
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
    throw parambd;
  }

  public final void f(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(11, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void g(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
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
    throw parambd;
  }

  public final void g(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(12, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void h(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        this.a.transact(35, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void h(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(13, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void i(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
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
    throw parambd;
  }

  public final void i(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(14, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void j(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        this.a.transact(40, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void j(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(15, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void k(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
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
    throw parambd;
  }

  public final void k(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(16, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void l(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        this.a.transact(44, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void l(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(17, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void m(bd parambd, int paramInt, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null);
      for (parambd = parambd.asBinder(); ; parambd = null)
      {
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
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
    throw parambd;
  }

  public final void m(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(18, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void n(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(23, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void o(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(25, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void p(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(27, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void q(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(37, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void r(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(38, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void s(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(41, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }

  public final void t(bd parambd, int paramInt, String paramString, Bundle paramBundle)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (parambd != null)
      {
        parambd = parambd.asBinder();
        localParcel1.writeStrongBinder(parambd);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        if (paramBundle == null)
          break label103;
        localParcel1.writeInt(1);
        paramBundle.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(43, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        parambd = null;
        break;
        label103: localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw parambd;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.bi
 * JD-Core Version:    0.6.2
 */