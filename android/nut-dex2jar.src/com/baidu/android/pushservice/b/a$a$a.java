package com.baidu.android.pushservice.b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class a$a$a
  implements a
{
  private IBinder a;

  a$a$a(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  public int a(String paramString, int paramInt)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt);
      this.a.transact(8, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramInt = localParcel2.readInt();
      return paramInt;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString;
  }

  public String a()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      this.a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public String a(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      this.a.transact(6, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramString = localParcel2.readString();
      return paramString;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString;
  }

  public String a(String paramString, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3)
    throws RemoteException
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt1);
      paramInt1 = i;
      if (paramBoolean)
        paramInt1 = 1;
      localParcel1.writeInt(paramInt1);
      localParcel1.writeInt(paramInt2);
      localParcel1.writeInt(paramInt3);
      this.a.transact(7, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramString = localParcel2.readString();
      return paramString;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString;
  }

  public void a(String paramString1, String paramString2, b paramb)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      if (paramb != null);
      for (paramString1 = paramb.asBinder(); ; paramString1 = null)
      {
        localParcel1.writeStrongBinder(paramString1);
        this.a.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString1;
  }

  public void a(String paramString1, String paramString2, boolean paramBoolean, b paramb)
    throws RemoteException
  {
    int i = 1;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      if (paramBoolean)
      {
        localParcel1.writeInt(i);
        if (paramb == null)
          break label100;
      }
      label100: for (paramString1 = paramb.asBinder(); ; paramString1 = null)
      {
        localParcel1.writeStrongBinder(paramString1);
        this.a.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        i = 0;
        break;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString1;
  }

  public void a(String paramString1, String paramString2, boolean paramBoolean, String paramString3, b paramb)
    throws RemoteException
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      if (paramBoolean)
        i = 1;
      localParcel1.writeInt(i);
      localParcel1.writeString(paramString3);
      if (paramb != null);
      for (paramString1 = paramb.asBinder(); ; paramString1 = null)
      {
        localParcel1.writeStrongBinder(paramString1);
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
    throw paramString1;
  }

  public boolean a(String paramString1, String paramString2)
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      this.a.transact(13, localParcel1, localParcel2, 0);
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
    throw paramString1;
  }

  public boolean a(String paramString1, String paramString2, int paramInt)
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      localParcel1.writeInt(paramInt);
      this.a.transact(15, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramInt = localParcel2.readInt();
      if (paramInt != 0)
        bool = true;
      return bool;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString1;
  }

  public boolean a(String paramString1, String paramString2, String paramString3, String paramString4)
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      localParcel1.writeString(paramString3);
      localParcel1.writeString(paramString4);
      this.a.transact(14, localParcel1, localParcel2, 0);
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
    throw paramString1;
  }

  public boolean a(String paramString, boolean paramBoolean)
    throws RemoteException
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      int i;
      if (paramBoolean)
      {
        i = 1;
        localParcel1.writeInt(i);
        this.a.transact(19, localParcel1, localParcel2, 0);
        localParcel2.readException();
        i = localParcel2.readInt();
        if (i == 0)
          break label90;
      }
      label90: for (paramBoolean = bool; ; paramBoolean = false)
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
    throw paramString;
  }

  public IBinder asBinder()
  {
    return this.a;
  }

  public int b(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      this.a.transact(9, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString;
  }

  public int b(String paramString, int paramInt)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt);
      this.a.transact(10, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramInt = localParcel2.readInt();
      return paramInt;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString;
  }

  public String b()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      this.a.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void b(String paramString1, String paramString2, b paramb)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      if (paramb != null);
      for (paramString1 = paramb.asBinder(); ; paramString1 = null)
      {
        localParcel1.writeStrongBinder(paramString1);
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
    throw paramString1;
  }

  public boolean b(String paramString1, String paramString2)
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      this.a.transact(16, localParcel1, localParcel2, 0);
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
    throw paramString1;
  }

  public int c()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      this.a.transact(20, localParcel1, localParcel2, 0);
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

  public int c(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      this.a.transact(11, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString;
  }

  public int c(String paramString, int paramInt)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt);
      this.a.transact(12, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramInt = localParcel2.readInt();
      return paramInt;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString;
  }

  public int d(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      this.a.transact(17, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw paramString;
  }

  public boolean e(String paramString)
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      this.a.transact(18, localParcel1, localParcel2, 0);
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
    throw paramString;
  }

  public String f(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.baidu.android.pushservice.aidl.IPushService");
      localParcel1.writeString(paramString);
      this.a.transact(22, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramString = localParcel2.readString();
      return paramString;
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
 * Qualified Name:     com.baidu.android.pushservice.b.a.a.a
 * JD-Core Version:    0.6.2
 */