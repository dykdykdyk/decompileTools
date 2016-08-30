package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.dynamic.i;

public abstract class bp extends Binder
  implements bo
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnLocationChangeListener");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnLocationChangeListener");
      a(i.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 2:
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnLocationChangeListener");
    if (paramParcel1.readInt() != 0);
    for (paramParcel1 = (Location)Location.CREATOR.createFromParcel(paramParcel1); ; paramParcel1 = null)
    {
      a(paramParcel1);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.bp
 * JD-Core Version:    0.6.2
 */