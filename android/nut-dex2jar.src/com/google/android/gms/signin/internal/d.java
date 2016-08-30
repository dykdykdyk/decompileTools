package com.google.android.gms.signin.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

public abstract class d extends Binder
  implements c
{
  public static c a(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
    if ((localIInterface != null) && ((localIInterface instanceof c)))
      return (c)localIInterface;
    return new e(paramIBinder);
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    Object localObject;
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.signin.internal.ISignInCallbacks");
      return true;
    case 3:
      paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
      if (paramParcel1.readInt() != 0)
      {
        localObject = (ConnectionResult)ConnectionResult.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0)
          break label144;
      }
      for (paramParcel1 = (AuthAccountResult)AuthAccountResult.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a((ConnectionResult)localObject, paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject = null;
        break;
      }
    case 4:
      paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Status)Status.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 6:
      paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
      if (paramParcel1.readInt() != 0);
      for (paramParcel1 = (Status)Status.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        b(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 7:
      label144: paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
      if (paramParcel1.readInt() != 0)
      {
        localObject = (Status)Status.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0)
          break label299;
      }
      label299: for (paramParcel1 = (GoogleSignInAccount)GoogleSignInAccount.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
      {
        a((Status)localObject, paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject = null;
        break;
      }
    case 8:
    }
    paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
    if (paramParcel1.readInt() != 0);
    for (paramParcel1 = (SignInResponse)SignInResponse.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
    {
      a(paramParcel1);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.d
 * JD-Core Version:    0.6.2
 */