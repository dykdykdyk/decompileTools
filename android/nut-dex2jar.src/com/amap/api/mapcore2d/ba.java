package com.amap.api.mapcore2d;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.maps2d.AMapOptions;
import com.amap.api.maps2d.model.CameraPosition;

public class ba
  implements ag
{
  public static volatile Context a;
  private ad b;
  private AMapOptions c;

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    throws RemoteException
  {
    if (this.b == null)
    {
      if ((a == null) && (paramLayoutInflater != null))
        a = paramLayoutInflater.getContext().getApplicationContext();
      if (a == null)
        throw new NullPointerException("Context 为 null 请在地图调用之前 使用 MapsInitializer.initialize(Context paramContext) 来设置Context");
      g();
      this.b = new b(a);
    }
    if ((this.c == null) && (paramBundle != null))
      this.c = ((AMapOptions)paramBundle.getParcelable("MapOptions"));
    b(this.c);
    cx.a("MapFragmentDelegateImp", "onCreateView", 113);
    return this.b.d();
  }

  public ad a()
    throws RemoteException
  {
    if (this.b == null)
    {
      if (a == null)
        throw new NullPointerException("Context 为 null 请在地图调用之前 使用 MapsInitializer.initialize(Context paramContext) 来设置Context");
      g();
      this.b = new b(a);
    }
    return this.b;
  }

  public void a(Activity paramActivity, AMapOptions paramAMapOptions, Bundle paramBundle)
    throws RemoteException
  {
    a = paramActivity.getApplicationContext();
    this.c = paramAMapOptions;
  }

  public void a(Context paramContext)
  {
    if (paramContext != null)
      a = paramContext.getApplicationContext();
  }

  public void a(Bundle paramBundle)
    throws RemoteException
  {
    cx.a("MapFragmentDelegateImp", "onCreate", 113);
  }

  public void a(AMapOptions paramAMapOptions)
  {
    this.c = paramAMapOptions;
  }

  public void b()
    throws RemoteException
  {
    if (this.b != null)
      this.b.x();
  }

  public void b(Bundle paramBundle)
    throws RemoteException
  {
    if (this.b != null)
    {
      if (this.c == null)
        this.c = new AMapOptions();
      this.c = this.c.camera(a().f());
      paramBundle.putParcelable("MapOptions", this.c);
    }
  }

  void b(AMapOptions paramAMapOptions)
    throws RemoteException
  {
    if ((paramAMapOptions != null) && (this.b != null))
    {
      Object localObject = paramAMapOptions.getCamera();
      if (localObject != null)
        this.b.a(r.a(((CameraPosition)localObject).target, ((CameraPosition)localObject).zoom, ((CameraPosition)localObject).bearing, ((CameraPosition)localObject).tilt));
      localObject = this.b.p();
      ((ar)localObject).e(paramAMapOptions.getScrollGesturesEnabled().booleanValue());
      ((ar)localObject).b(paramAMapOptions.getZoomControlsEnabled().booleanValue());
      ((ar)localObject).f(paramAMapOptions.getZoomGesturesEnabled().booleanValue());
      ((ar)localObject).c(paramAMapOptions.getCompassEnabled().booleanValue());
      ((ar)localObject).a(paramAMapOptions.getScaleControlsEnabled().booleanValue());
      ((ar)localObject).a(paramAMapOptions.getLogoPosition());
      this.b.a(paramAMapOptions.getMapType());
      this.b.a(paramAMapOptions.getZOrderOnTop().booleanValue());
    }
  }

  public void c()
    throws RemoteException
  {
    if (this.b != null)
      this.b.y();
  }

  public void d()
    throws RemoteException
  {
  }

  public void e()
    throws RemoteException
  {
    if (a() != null)
    {
      a().j();
      a().u();
    }
  }

  public void f()
    throws RemoteException
  {
    Log.d("onLowMemory", "onLowMemory run");
  }

  void g()
  {
    int i = a.getResources().getDisplayMetrics().densityDpi;
    v.k = i;
    if (i > 320)
      if (i <= 480)
        v.i = 384;
    while (i <= 120)
    {
      v.a = 0.5F;
      return;
      v.i = 512;
      continue;
      v.i = 256;
    }
    if (i <= 160)
    {
      v.a = 0.6F;
      return;
    }
    if (i <= 240)
    {
      v.a = 0.87F;
      return;
    }
    if (i <= 320)
    {
      v.a = 1.0F;
      return;
    }
    if (i <= 480)
    {
      v.a = 1.5F;
      return;
    }
    v.a = 1.8F;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ba
 * JD-Core Version:    0.6.2
 */