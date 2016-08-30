package com.google.android.gms.signin.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

public abstract interface c extends IInterface
{
  public abstract void a(ConnectionResult paramConnectionResult, AuthAccountResult paramAuthAccountResult)
    throws RemoteException;

  public abstract void a(Status paramStatus)
    throws RemoteException;

  public abstract void a(Status paramStatus, GoogleSignInAccount paramGoogleSignInAccount)
    throws RemoteException;

  public abstract void a(SignInResponse paramSignInResponse)
    throws RemoteException;

  public abstract void b(Status paramStatus)
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.c
 * JD-Core Version:    0.6.2
 */