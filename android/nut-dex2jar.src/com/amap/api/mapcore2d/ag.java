package com.amap.api.mapcore2d;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.maps2d.AMapOptions;

public abstract interface ag
{
  public abstract View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    throws RemoteException;

  public abstract ad a()
    throws RemoteException;

  public abstract void a(Activity paramActivity, AMapOptions paramAMapOptions, Bundle paramBundle)
    throws RemoteException;

  public abstract void a(Context paramContext);

  public abstract void a(Bundle paramBundle)
    throws RemoteException;

  public abstract void a(AMapOptions paramAMapOptions);

  public abstract void b()
    throws RemoteException;

  public abstract void b(Bundle paramBundle)
    throws RemoteException;

  public abstract void c()
    throws RemoteException;

  public abstract void d()
    throws RemoteException;

  public abstract void e()
    throws RemoteException;

  public abstract void f()
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ag
 * JD-Core Version:    0.6.2
 */