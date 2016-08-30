package com.google.android.gms.maps;

import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.maps.a.ae;
import com.google.android.gms.maps.a.m;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class r
  implements ae
{
  final m a;
  private final ViewGroup b;
  private View c;

  public r(ViewGroup paramViewGroup, m paramm)
  {
    this.a = ((m)b.a(paramm));
    this.b = ((ViewGroup)b.a(paramViewGroup));
  }

  public final void a()
  {
    try
    {
      this.a.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void a(Bundle paramBundle)
  {
    try
    {
      this.a.a(paramBundle);
      this.c = ((View)k.a(this.a.f()));
      this.b.removeAllViews();
      this.b.addView(this.c);
      return;
    }
    catch (RemoteException paramBundle)
    {
    }
    throw new RuntimeRemoteException(paramBundle);
  }

  public final void a(v paramv)
  {
    try
    {
      this.a.a(new s(this, paramv));
      return;
    }
    catch (RemoteException paramv)
    {
    }
    throw new RuntimeRemoteException(paramv);
  }

  public final void b()
  {
    try
    {
      this.a.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void b(Bundle paramBundle)
  {
    try
    {
      this.a.b(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
    }
    throw new RuntimeRemoteException(paramBundle);
  }

  public final void c()
  {
    try
    {
      this.a.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public final void d()
  {
    try
    {
      this.a.e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.r
 * JD-Core Version:    0.6.2
 */