package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.ax;
import com.google.android.gms.common.internal.bj;

final class h
  implements f
{
  private IBinder a;

  h(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public final void a(int paramInt)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      localParcel1.writeInt(paramInt);
      this.a.transact(7, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public final void a(int paramInt, Account paramAccount, c paramc)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
        localParcel1.writeInt(paramInt);
        if (paramAccount != null)
        {
          localParcel1.writeInt(1);
          paramAccount.writeToParcel(localParcel1, 0);
          if (paramc != null)
          {
            paramAccount = paramc.asBinder();
            localParcel1.writeStrongBinder(paramAccount);
            this.a.transact(8, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramAccount = null;
    }
  }

  public final void a(AuthAccountRequest paramAuthAccountRequest, c paramc)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
        if (paramAuthAccountRequest != null)
        {
          localParcel1.writeInt(1);
          paramAuthAccountRequest.writeToParcel(localParcel1, 0);
          if (paramc != null)
          {
            paramAuthAccountRequest = paramc.asBinder();
            localParcel1.writeStrongBinder(paramAuthAccountRequest);
            this.a.transact(2, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramAuthAccountRequest = null;
    }
  }

  public final void a(ResolveAccountRequest paramResolveAccountRequest, bj parambj)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
        if (paramResolveAccountRequest != null)
        {
          localParcel1.writeInt(1);
          paramResolveAccountRequest.writeToParcel(localParcel1, 0);
          if (parambj != null)
          {
            paramResolveAccountRequest = parambj.asBinder();
            localParcel1.writeStrongBinder(paramResolveAccountRequest);
            this.a.transact(5, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramResolveAccountRequest = null;
    }
  }

  public final void a(ax paramax, int paramInt, boolean paramBoolean)
    throws RemoteException
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramax != null);
      for (paramax = paramax.asBinder(); ; paramax = null)
      {
        localParcel1.writeStrongBinder(paramax);
        localParcel1.writeInt(paramInt);
        paramInt = i;
        if (paramBoolean)
          paramInt = 1;
        localParcel1.writeInt(paramInt);
        this.a.transact(9, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramax;
  }

  public final void a(CheckServerAuthResult paramCheckServerAuthResult)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramCheckServerAuthResult != null)
      {
        localParcel1.writeInt(1);
        paramCheckServerAuthResult.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.a.transact(3, localParcel1, localParcel2, 0);
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
    throw paramCheckServerAuthResult;
  }

  public final void a(RecordConsentRequest paramRecordConsentRequest, c paramc)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
        if (paramRecordConsentRequest != null)
        {
          localParcel1.writeInt(1);
          paramRecordConsentRequest.writeToParcel(localParcel1, 0);
          if (paramc != null)
          {
            paramRecordConsentRequest = paramc.asBinder();
            localParcel1.writeStrongBinder(paramRecordConsentRequest);
            this.a.transact(10, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramRecordConsentRequest = null;
    }
  }

  public final void a(SignInRequest paramSignInRequest, c paramc)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
        if (paramSignInRequest != null)
        {
          localParcel1.writeInt(1);
          paramSignInRequest.writeToParcel(localParcel1, 0);
          if (paramc != null)
          {
            paramSignInRequest = paramc.asBinder();
            localParcel1.writeStrongBinder(paramSignInRequest);
            this.a.transact(12, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      paramSignInRequest = null;
    }
  }

  public final void a(c paramc)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramc != null);
      for (paramc = paramc.asBinder(); ; paramc = null)
      {
        localParcel1.writeStrongBinder(paramc);
        this.a.transact(11, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramc;
  }

  public final void a(boolean paramBoolean)
    throws RemoteException
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramBoolean)
        i = 1;
      localParcel1.writeInt(i);
      this.a.transact(4, localParcel1, localParcel2, 0);
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
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.h
 * JD-Core Version:    0.6.2
 */