package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.k;
import com.google.android.gms.dynamic.l;
import com.google.android.gms.maps.a.am;
import com.google.android.gms.maps.a.aq;
import com.google.android.gms.maps.a.m;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class t extends b<r>
{
  protected l<r> d;
  public final List<v> e = new ArrayList();
  private final ViewGroup f;
  private final Context g;
  private final GoogleMapOptions h;

  t(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    this.f = paramViewGroup;
    this.g = paramContext;
    this.h = paramGoogleMapOptions;
  }

  public final void a()
  {
    if ((this.d != null) && (this.a == null))
      try
      {
        u.a(this.g);
        Object localObject = am.a(this.g).a(k.a(this.g), this.h);
        if (localObject == null)
          return;
        this.d.a(new r(this.f, (m)localObject));
        localObject = this.e.iterator();
        while (((Iterator)localObject).hasNext())
        {
          v localv = (v)((Iterator)localObject).next();
          ((r)this.a).a(localv);
        }
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
        this.e.clear();
        return;
      }
      catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException)
      {
      }
  }

  protected final void a(l<r> paraml)
  {
    this.d = paraml;
    a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.t
 * JD-Core Version:    0.6.2
 */