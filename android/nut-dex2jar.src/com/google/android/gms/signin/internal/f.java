package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.ax;
import com.google.android.gms.common.internal.bj;

public abstract interface f extends IInterface
{
  public abstract void a(int paramInt)
    throws RemoteException;

  public abstract void a(int paramInt, Account paramAccount, c paramc)
    throws RemoteException;

  public abstract void a(AuthAccountRequest paramAuthAccountRequest, c paramc)
    throws RemoteException;

  public abstract void a(ResolveAccountRequest paramResolveAccountRequest, bj parambj)
    throws RemoteException;

  public abstract void a(ax paramax, int paramInt, boolean paramBoolean)
    throws RemoteException;

  public abstract void a(CheckServerAuthResult paramCheckServerAuthResult)
    throws RemoteException;

  public abstract void a(RecordConsentRequest paramRecordConsentRequest, c paramc)
    throws RemoteException;

  public abstract void a(SignInRequest paramSignInRequest, c paramc)
    throws RemoteException;

  public abstract void a(c paramc)
    throws RemoteException;

  public abstract void a(boolean paramBoolean)
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.signin.internal.f
 * JD-Core Version:    0.6.2
 */