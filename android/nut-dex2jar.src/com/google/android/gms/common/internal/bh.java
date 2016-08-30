package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract class bh extends Binder
  implements bg
{
  public static bg a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
    if ((localIInterface != null) && ((localIInterface instanceof bg)))
      return (bg)localIInterface;
    return new bi(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    String str1 = null;
    IBinder localIBinder = null;
    String str2 = null;
    Object localObject5 = null;
    Object localObject6 = null;
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
    Object localObject17 = null;
    Object localObject18 = null;
    Object localObject19 = null;
    Object localObject1 = null;
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject1 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject2 = paramParcel1.readString();
      localObject3 = paramParcel1.readString();
      localObject4 = paramParcel1.createStringArray();
      str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a((bd)localObject1, paramInt1, (String)localObject2, (String)localObject3, (String[])localObject4, str1, paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      a((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      a(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      a(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject3 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject4 = paramParcel1.readString();
      localObject1 = localObject2;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      b((bd)localObject3, paramInt1, (String)localObject4, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject4 = paramParcel1.readString();
      localObject1 = localObject3;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      c((bd)localObject2, paramInt1, (String)localObject4, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject4;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      d((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = str1;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      e((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject1 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject2 = paramParcel1.readString();
      localObject3 = paramParcel1.readString();
      localObject4 = paramParcel1.createStringArray();
      str1 = paramParcel1.readString();
      localIBinder = paramParcel1.readStrongBinder();
      str2 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a((bd)localObject1, paramInt1, (String)localObject2, (String)localObject3, (String[])localObject4, str1, localIBinder, str2, paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 10:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      a(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.createStringArray());
      paramParcel2.writeNoException();
      return true;
    case 11:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localIBinder;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      f((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 12:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = str2;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      g((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 13:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject5;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      h((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 14:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject6;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      i((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 15:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject7;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      j((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 16:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject8;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      k((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 17:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject9;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      l((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 18:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject10;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      m((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 19:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject1 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject2 = paramParcel1.readString();
      localObject3 = paramParcel1.readStrongBinder();
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a((bd)localObject1, paramInt1, (String)localObject2, (IBinder)localObject3, paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 20:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject1 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject2 = paramParcel1.readString();
      localObject3 = paramParcel1.createStringArray();
      localObject4 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a((bd)localObject1, paramInt1, (String)localObject2, (String[])localObject3, (String)localObject4, paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 21:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      b(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 22:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      c(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 23:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject11;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      n((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 24:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      d(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 25:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject12;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      o((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 26:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      e(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 27:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject13;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      p((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 28:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      a();
      paramParcel2.writeNoException();
      return true;
    case 30:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject1 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject2 = paramParcel1.readString();
      localObject3 = paramParcel1.readString();
      localObject4 = paramParcel1.createStringArray();
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a((bd)localObject1, paramInt1, (String)localObject2, (String)localObject3, (String[])localObject4, paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 31:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      f(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 32:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      g(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 33:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      a(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.createStringArray());
      paramParcel2.writeNoException();
      return true;
    case 34:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      a(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 35:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      h(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 36:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      i(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 37:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject14;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      q((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 38:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject15;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      r((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 40:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      j(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 41:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject16;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      s((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 42:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      k(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 43:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      paramInt1 = paramParcel1.readInt();
      localObject3 = paramParcel1.readString();
      localObject1 = localObject17;
      if (paramParcel1.readInt() != 0)
        localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      t((bd)localObject2, paramInt1, (String)localObject3, (Bundle)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 44:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      l(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 45:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      m(be.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 46:
      paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      localObject2 = be.a(paramParcel1.readStrongBinder());
      localObject1 = localObject18;
      if (paramParcel1.readInt() != 0)
        localObject1 = (GetServiceRequest)GetServiceRequest.CREATOR.createFromParcel(paramParcel1);
      a((bd)localObject2, (GetServiceRequest)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 47:
    }
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
    localObject2 = be.a(paramParcel1.readStrongBinder());
    localObject1 = localObject19;
    if (paramParcel1.readInt() != 0)
      localObject1 = (ValidateAccountRequest)ValidateAccountRequest.CREATOR.createFromParcel(paramParcel1);
    a((bd)localObject2, (ValidateAccountRequest)localObject1);
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.bh
 * JD-Core Version:    0.6.2
 */